#!/usr/bin/env bash
[ -z ${DEBUG_API+x} ] && DEBUG_API=http://localhost:1635
[ -z ${MIN_AMOUNT+x} ] && MIN_AMOUNT=10000000000000000

function getPeers() {
  curl -s "$DEBUG_API/chequebook/cheque" | jq -r '.lastcheques | .[].peer'
}

echo $(getPeers)
