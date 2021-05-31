import requests
import json

def pretty_json_text(t):
  dic = json.loads(t)
  return json.dumps(dic, indent=4)

# u0 = f'https://queue.coinlist.co/spa-api/queue/coinlist/coinlist/a6ab0d8e-e15d-4887-9305-a2f8e7f26d1f/status?'+ \
#   'cid=en-US&l=CoinList%20General%20Site%20Layout&seid=02a5d804-342e-6421-37b2-649548279944&sets=1618218152028'

# https://queue.coinlist.co/?c=coinlist&e=coinlist&ver=v3-javascript-3.6.1&cver=88&man=CoinList&t=https%3A%2F%2Fcoinlist.co%2F&kupver=cloudflare-1.1.2&q=8e7a10aa-5dfb-467a-8d5d-b1c4ee6a8178
queue_id = '8e7a10aa-5dfb-467a-8d5d-b1c4ee6a8178'

u0 = f'https://queue.coinlist.co/spa-api/queue/coinlist/coinlist/{queue_id}/status?'+ \
  'cid=en-US&l=CoinList%20General%20Site%20Layout'

headers = {
  'authority': 'queue.coinlist.co',
  'sec-ch-ua': '"Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"',
  'accept': r'application/json, text/javascript, */*; q=0.01',
  'x-requested-with': 'XMLHttpRequest',
  'sec-ch-ua-mobile': '?0',
  'user-agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36',
  'content-type': 'application/json',
  'origin': 'https://queue.coinlist.co',
  'sec-fetch-site': 'same-origin',
  'sec-fetch-mode': 'cors',
  'sec-fetch-dest': 'empty',
  'referer': r'https://queue.coinlist.co/?c=coinlist&e=coinlist&ver=v3-javascript-3.6.1&cver=88&man=CoinList&t=https%3A%2F%2Fcoinlist.co%2F&kupver=cloudflare-1.1.2',
  'accept-language': 'zh-CN,zh;q=0.9',
}

data = json.dumps({
  'isClientRedayToRedirect': True,
})

s = requests.Session()

r0 = s.post(u0, data, headers=headers, allow_redirects=False)

print(pretty_json_text(r0.text))