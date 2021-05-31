#!/usr/bin/env python3

from web3 import Web3
import math
import time

'''config'''
# account
account = '0x73d8d5B63298f005082fBD84EdDD1c11c39F960d'
private_key = 'f79550430c77c23bfe649eb793031eb88b9a5afa17da9319333e2621cdccd7ab'
# limit
would_buy_price = 0.21 # buy gbzz when price of gbzz less than the value
eth_reserve = 1 # reserve eth for fees
'''config end'''

'''globals'''
# provider
w3 = Web3(Web3.HTTPProvider('https://goerli.infura.io/v3/9e5830e2c56546d6ab6338a6606dfc44'))
# contract
broker_address = '0x7C1ed097af300c85f3e9aaf51A15dE5c967f828E'
gbzz_address = '0x2aC3c1d3e24b45c6C310534Bc2Dd84B5ed576335'
'''globals end'''

with open('abi/ERC20.json') as f:
  erc20_abi = f.read()

with open('abi/bzz_Eth_broker.json') as f:
  broker_abi = f.read()

def gbzz(n):
  return int(n * math.pow(10, 16))

def eth(n):
  return int(n * math.pow(10, 18))

def get_contract(addr, abi):
  return w3.eth.contract(addr, abi=abi)

gbzz_contract = get_contract(gbzz_address, erc20_abi)
broker_contract = get_contract(broker_address, broker_abi)

'''init'''

# balance_of_gbzz = gbzz_contract.functions.balanceOf(account).call()
# print(f'balance: {balance_of_gbzz / 10**16}')

def call_mintTo(buy_amount, value):
  raw_tx = broker_contract.functions.mintTo(
    buy_amount,
    int(2**256-1),
    int(2**256-1),
    account
  ).buildTransaction({
    'value': value,
    'nonce': w3.eth.getTransactionCount(account),
    'gas': 300000,
    'gasPrice': 1000000000
  })

  signed_tx = w3.eth.account.signTransaction(raw_tx, private_key)
  tx_hash = w3.eth.send_raw_transaction(signed_tx.rawTransaction)

  print('Waiting for confirm...')
  txn_receipt = w3.eth.waitForTransactionReceipt(tx_hash)
  print(f'https://goerli.etherscan.io/tx/{tx_hash.hex()}')

while True:
  balance = w3.eth.getBalance(account, 'latest')
  price = broker_contract.functions.buyPrice(gbzz(1)).call()
  print(f'price of gbzz: {price / 10**18}')

  if balance <= eth(eth_reserve):
    print(f'insufficient eth balance.\n\
    balance: {balance / 10**18}\n\
    reserve: {eth_reserve}\n')
  elif price / 10**18 <= would_buy_price:
    balance_after_reserve = balance - eth(eth_reserve)
    buy_amount = 1e16 * balance_after_reserve / price
    print(f'buy : {buy_amount / 1e16} gbzz')
    eth_amount = broker_contract.functions.buyPrice(int(buy_amount)).call()
    print(f'need eth: {eth_amount / 1e18}')
    call_mintTo(int(buy_amount), int(eth_amount))
  else:
    print('skip...\n')
  time.sleep(2)