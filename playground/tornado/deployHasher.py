import time
import web3
from web3 import Web3, HTTPProvider

account = {
  'address': '0x18bE019EC7e1E8EFc75a32BBB5c4E8186E9e7F32',
  'pk': '020c570b0667f55a607bb2f5328ec4568e79980122b7abf2964062a62230ce39'
}
w3 = Web3(Web3.HTTPProvider('https://rinkeby.infura.io/v3/8b55e04e99464356a003d3b7032504aa'))

import os
bin_path = f'{os.path.dirname(__file__)}/hasher.bin'
# bin_path = f'{os.path.dirname(__file__)}/simple.bin'
f = open(bin_path)
hasher_hex_string = f.read()
f.close()

nonce = w3.eth.getTransactionCount(account['address'])

txn_dict = {
  # 'to': contract_address,
  'value': 0,
  'gas': 2000000,
  'gasPrice': w3.toWei('1', 'gwei'),
  'nonce': nonce,
  'chainId': 4 # rinkeby
}

signed_txn = w3.eth.account.signTransaction(txn_dict, account['pk'])

txn_hash = w3.eth.sendRawTransaction(signed_txn.rawTransaction)

txn_receipt = None
count = 0
while txn_receipt is None and (count < 300):
  try:
    txn_receipt = w3.eth.getTransactionReceipt(txn_hash)
  except web3.exceptions.TransactionNotFound:
    print('waiting...')

  time.sleep(1)


if txn_receipt is None:
  print({'status': 'failed', 'error': 'timeout'})

print({'status': 'added', 'txn_receipt': txn_receipt})
