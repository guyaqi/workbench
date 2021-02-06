import re

textpath_str = './test.txt'
p = re.compile("\\\\")
text_path = p.sub("\\\\\\\\", textpath_str)  # 转义反斜杠
print(text_path)
with open(text_path, "r+",encoding='utf-8') as text_file:
    line1 = text_file.readline()
    while text_file:
        l1 = text_file.readline()
        l2 = text_file.readline()
        l1.replace(l1[0:9], l2[0:9])
        print(l1)
text_file.close()
print("替换成功")
