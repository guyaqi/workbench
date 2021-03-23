from web3 import Web3
import json
import requests
import os

# w3 = Web3(Web3.HTTPProvider('https://rinkeby.infura.io/v3/8b55e04e99464356a003d3b7032504aa'))
w3 = Web3(Web3.HTTPProvider('https://mainnet.infura.io/v3/8b55e04e99464356a003d3b7032504aa'))
# w3 = Web3(Web3.HTTPProvider('http://47.108.215.58:9000'))

ADDRESS_CETH = Web3.toChecksumAddress('0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5')
ADDRESS_COMPTROLLER = Web3.toChecksumAddress('0x3d9819210a31b4961b30ef54be2aed79b9c9cd3b')
BLOCKS_PER_YEAR = 2102400

from web3.middleware import geth_poa_middleware
w3.middleware_onion.inject(geth_poa_middleware, layer=0)

ad = '0x18bE019EC7e1E8EFc75a32BBB5c4E8186E9e7F32'
pk = '020c570b0667f55a607bb2f5328ec4568e79980122b7abf2964062a62230ce39'

res = requests.get('https://api.compound.finance/api/v2/prices?network=mainnet')

prices = res.json()['tokens']
for price_item in prices:
  if price_item['symbol'] == 'ETH':
    price_eth = price_item['price']
  if price_item['symbol'] == 'COMP':
    price_comp = price_item['price']

def read_abi_file(path):
  f = open(path)
  s = f.read()
  f.close()
  obj = json.loads(s)
  return json.dumps(obj)

def use_contract(addr, abi):
  return w3.eth.contract(addr, abi=abi)

path_root = os.path.dirname(__file__)
ABI_CETH = read_abi_file(f'{path_root}/CEthABI.json')
ABI_COMPTROLLER = read_abi_file(f'{path_root}/ComptrollerABI.json')

CONTRACT_CETH = use_contract(ADDRESS_CETH, ABI_CETH)
CONTRACT_COMPTROLLER = use_contract(ADDRESS_COMPTROLLER, ABI_COMPTROLLER)


# print('\n## price_eth')
# print(price_eth)

# print('\n## price_comp')
# print(price_comp)

print('\n## borrow_speed')
borrow_speed = CONTRACT_COMPTROLLER.functions.compSpeeds(ADDRESS_CETH).call() / 10**18
print(borrow_speed)

print('\n## total_borrows')
total_borrows = CONTRACT_CETH.functions.totalBorrows().call() / 10**18
print(total_borrows)

# print('\n## total_cash')
total_cash = w3.eth.getBalance(CONTRACT_CETH.address) / 10**18
# print(total_cash)

# print('\n## totalReserves')
totalReserves = CONTRACT_CETH.functions.totalReserves().call() / 10**18
# print(totalReserves)

# print('\n## borrowRate')
borrowRate = CONTRACT_CETH.functions.borrowRatePerBlock().call() / 10**18
# print(borrowRate)


'''
rate_per_block to APY
'''
def to_apy(rate_per_block):
  return (rate_per_block + 1)**(BLOCKS_PER_YEAR) - 1
def to_apb(rate_per_block):
  return (rate_per_block + 1)**(1/BLOCKS_PER_YEAR) - 1

# print('\n## borrow APY')
# bAPY = to_apy(borrowRate)
# print(bAPY)

# print('\n## price eth / comp')
# price_ratio = float(price_eth) / float(price_comp)
# print(price_ratio)

print('\n## compound distribution borrow APB')
bAPB = to_apb(0.0531)
print(bAPB)

# factor = 1 / ( borrow_speed * total_borrows )

# comp_borrow_apy = (1 + factor)**BLOCKS_PER_YEAR - 1

# print(comp_borrow_apy)



# print('\n## reverse factor')
# dbapy = 0.0286
# r_factor = (dbapy + 1)**(1/BLOCKS_PER_YEAR) - 1
# print(r_factor)


# print('\n## try')
# raw_factor = 1/(borrow_speed * total_borrows)
# print(raw_factor / price_ratio)

# borrow_speed  total_borrows       APB
# 0.01075       116384.67709422983  2.4609111415330176e-08
