#!/usr/bin/env bash

[ -z ${DEBUG_API+x} ] && DEBUG_API=http://localhost:1635
[ -z ${MIN_AMOUNT+x} ] && MIN_AMOUNT=10000000000000000

# $1: api
function getPeers() {
  curl -s "$1/chequebook/cheque" | jq -r '.lastcheques | .[].peer'
}

# $1: peer
# $2: api
function getCumulativePayout() {
  local peer=$1
  local cumulativePayout=$(curl -s "$2/chequebook/cheque/$peer" | jq '.lastreceived.payout')
  if [ $cumulativePayout == null ]
  then
    echo 0
  else
    echo $cumulativePayout
  fi
}

# $1: peer
# $2: api
function getLastCashedPayout() {
  local peer=$1
  local cashout=$(curl -s "$2/chequebook/cashout/$peer" | jq '.cumulativePayout')
  if [ $cashout == null ]
  then
    echo 0
  else
    echo $cashout
  fi
}

# $1: peer
# $2: api
function getUncashedAmount() {
  local peer=$1
  local cumulativePayout=$(getCumulativePayout $peer $2)
  if [ $cumulativePayout == 0 ]
  then
    echo 0
    return
  fi

  cashedPayout=$(getLastCashedPayout $peer $2)
  let uncashedAmount=$cumulativePayout-$cashedPayout
  echo $uncashedAmount
}

# $1: peer
# $2: api
function cashout() {
  local peer=$1
  local response=$(curl -s -XPOST "$1/chequebook/cashout/$peer")  
  local txHash=$(echo "$response" | jq -r .transactionHash)
  if [ "$txHash" == "null" ]
  then
    echo could not cash out cheque for $peer: $(echo "$response" | jq -r .code,.message)
    return
  fi

  echo cashing out cheque for $peer in transaction $txHash >&2

  result="$(curl -s $1/chequebook/cashout/$peer | jq .result)"
  while [ "$result" == "null" ]
  do
    sleep 5
    result=$(curl -s $1/chequebook/cashout/$peer | jq .result)
  done
}

# $1: minAmount
# $2: api
function cashoutAll() {
  local minAmount=$1
  for peer in $(getPeers $2)
  do
    local uncashedAmount=$(getUncashedAmount $peer $2)
    if (( "$uncashedAmount" > $minAmount ))
    then
      echo "uncashed cheque for $peer ($uncashedAmount uncashed)" >&2
      cashout $peer $2
    fi
  done
}

# $1: api
function listAllUncashed() {
  for peer in $(getPeers $1)
  do
    local uncashedAmount=$(getUncashedAmount $peer $1)
    if (( "$uncashedAmount" > 0 ))
    then
      echo $peer $uncashedAmount
    fi
  done
}


api=xxx
case $1 in
cashout)
  cashout $2 $api
  ;;
cashout-all)
  cashoutAll $MIN_AMOUNT $api
  ;;
list-uncashed|*)
  listAllUncashed
  ;;
esac