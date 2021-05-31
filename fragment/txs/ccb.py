#!/usr/bin/env python3

from web3 import Web3
import math
import time

'''
cashChequeBeneficiary
'''

contract_addr = '0x848114eD31edc45BCE20C3833dC17EdaE77827C0'
opr_addr = '0x5232A43f0Be1dcc215cf0fe57FcCdfA45A821873'
opr_pk = 'f37569377a6bb80fa01cc191389302a1f71fd40da560f1133b65895815c01643'

sender_addr = '0x5248E50850360D3E26C9De1D67F9C4E1Bfa88b23'
sender_pk = 'b5e4904668f89550aacd06327c696a1433044a3b17f346b9542948ac784e0546'

to_sign = {
  'types': {
    'EIP712Domain': [
      { 'name': 'name', 'type': 'string' },
      { 'name': 'version', 'type': 'string' },
      { 'name': 'chainId', 'type': 'uint256' },
    ],
    'Cheque': [
      { 'name': 'chequebook', 'type': 'address' },
      { 'name': 'beneficiary', 'type': 'address' },
      { 'name': 'cumulativePayout', 'type': 'uint256' },
    ],
    'primaryType': 'Cheque',
    'domain': {
        'name': 'Chequebook',
        'version': '1.0',
        'chainId': 5,
        'verifyingContract': contract_addr,
    },
    'message': {
      'chequebook': contract_addr,
      'beneficiary': sender_addr,
      'cumulativePayout': int(1)
    },
  }
}

# w3 = Web3(Web3.HTTPProvider('https://goerli.infura.io/v3/9e5830e2c56546d6ab6338a6606dfc44'))
w3 = Web3(Web3.HTTPProvider('http://54.151.219.132:8546'))

signed_data = w3.eth.sign_typed_data(
  opr_addr,
  to_sign
)

print(signed_data)
# Cheque(address chequebook,address beneficiary,uint256 cumulativePayout)
