import json
import os
import shutil
import ssl
import urllib.request

from unidecode import unidecode

ssl._create_default_https_context = ssl._create_unverified_context


def camelcase(text):
    text = unidecode(text)
    s = text.replace("-", " ").replace("_", " ")
    s = s.split()
    if len(text) == 0:
        return text
    return s[0] + ''.join(i.capitalize() for i in s[1:])


if os.path.exists('output'):
    shutil.rmtree('output')

os.mkdir('output')

f = open('link.json')
data = json.load(f)
for i in data['downloadLink']:
    count = int(i['count'])
    digits = len(str(count))
    link = i['link']
    fileNameSample = camelcase(i['title'])
    for j in range(1, count):
        imgURL = link + str(j) + ".jpg"
        imgName = fileNameSample + "_page" + str(j).rjust(digits, '0') + ".jpg"
        urllib.request.urlretrieve(imgURL, "output/" + imgName)

# url = 'urls.txt'
# url_file = open(url, 'r')
# list_url = url_file.readlines()
# url_file.close()
#
# fileName = 'fileName.txt'
# filename_file = open(fileName, 'r')
# list_fileName = filename_file.readlines()
# filename_file.close()
#
# if os.path.exists('output'):
#     shutil.rmtree('output')
#
# os.mkdir('output')
#
# for i in range(len(list_url)):
#     imgURL = list_url[i]
#     imgName = list_fileName[i].strip()
#     urllib.request.urlretrieve(imgURL, "output/" + imgName)
