import os
import re
import json

base = '/Users/guyaqi/Library/Containers/com.tencent.xinWeChat/Data/Library/Application Support/com.tencent.xinWeChat/2.0b4.0.9/05dfebb5a4fd3d27ad6a94eeef8b06b6/Message/MessageTemp/6a1af33c5851b4c5d43b438d03efb5ef/File/小黄人100'
obj = []

def walkFile(file):
  print(base)
  for root, dirs, files in os.walk(file):
    # 遍历文件
    for f in files:
      # print(os.path.join(root, f))
      # number = re.search(r'\d+', f)
      # name = re.search(r'[\u4e00-\u9fa5a-zA-Z]+', f)
      
      os.rename(os.path.join(root,f), os.path.join(root,f'{f}.png'))

      # obj.append({
      #   'id': int(number.group(0)),
      #   'name': name.group(0)
      # })

    # for d in dirs:
    #   print(os.path.join(root, d))

walkFile(base)

obj.sort(key=lambda x:x['id'])

print(json.dumps(obj, ensure_ascii=False))
# print(obj)