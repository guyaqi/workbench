import requests as r
import json as j

u0 = 'http://8.210.235.0:9006/api/join'

data = {
  'address': '0x9100Aa45a01AAd7DEb54D74a71590313c1D64Bd0',
  'option': 1
}

res = r.post(u0, data=data)

print(res.text)