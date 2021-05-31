import requests

# u0 = 'https://sales.coinlist.co/rly-community-sale'
u0 = 'https://coinlist.co/'

headers = {
  'accept': r'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'accept-encoding': r'gzip, deflate, br',
  'accept-language': r'zh-CN,zh;q=0.9,en;q=0.8',
  'cache-control': r'max-age=0',
  'referer': r'https://queue.coinlist.co/',
  'sec-ch-ua': r'" Not A;Brand";v="99", "Chromium";v="90", "Google Chrome";v="90"',
  'sec-ch-ua-mobile': r'?0',
  'sec-fetch-dest': r'document',
  'sec-fetch-mode': r'navigate',
  'sec-fetch-site': r'same-site',
  'sec-fetch-user': r'?1',
  'upgrade-insecure-requests': r'1',
  'user-agent': r'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.40 Safari/537.36',
}
s = requests.Session()
r0 = s.get(u0, headers=headers, allow_redirects=False)
print(r0.status_code)
print(r0.headers)
exit(0)
s.get(r0.headers['location'], headers=headers).text
print(s.cookies)
