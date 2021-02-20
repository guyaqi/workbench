import requests
import json
# import

# UNI_GRAPH_NODE = 'https://api.thegraph.com/subgraphs/name/ianlapham/uniswapv2'
# addr = '0x6b175474e89094c44da98b954eedeac495271d0f'
# addrLower = addr.lower()
# post_json = '{"operationName":null,"variables":{"allPairs":["'+addrLower+'"]},"query":"query ($allPairs: [Bytes]!) {\\n  mints(first: 20, where: {pair_in: $allPairs}, orderBy: timestamp, orderDirection: desc) {\\n    transaction {\\n      id\\n      timestamp\\n      __typename\\n    }\\n    pair {\\n      token0 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      token1 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      __typename\\n    }\\n    to\\n    liquidity\\n    amount0\\n    amount1\\n    amountUSD\\n    __typename\\n  }\\n  burns(first: 20, where: {pair_in: $allPairs}, orderBy: timestamp, orderDirection: desc) {\\n    transaction {\\n      id\\n      timestamp\\n      __typename\\n    }\\n    pair {\\n      token0 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      token1 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      __typename\\n    }\\n    sender\\n    liquidity\\n    amount0\\n    amount1\\n    amountUSD\\n    __typename\\n  }\\n  swaps(first: 999, where: {pair_in: $allPairs}, orderBy: timestamp, orderDirection: desc) {\\n    transaction {\\n      id\\n      timestamp\\n      __typename\\n    }\\n    id\\n    pair {\\n      token0 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      token1 {\\n        id\\n        symbol\\n        __typename\\n      }\\n      __typename\\n    }\\n    amount0In\\n    amount0Out\\n    amount1In\\n    amount1Out\\n    amountUSD\\n    to\\n    __typename\\n  }\\n}\\n"}'
# print(post_json)
# res = requests.post(UNI_GRAPH_NODE, data=post_json)
# print(res.text)

