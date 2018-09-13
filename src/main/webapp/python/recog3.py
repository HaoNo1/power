# conding=utf-8;
import sys;
from aip import AipOcr

path = sys.argv[1]

APP_ID = '11610882'
API_KEY = 'iAbZK4zNaldxyUQhsTirE0z5'
SECRET_KEY = 'QqBMWEiWF6jGmOWmoFPvgAx9NDMgrf53'

client = AipOcr(APP_ID, API_KEY, SECRET_KEY)


""" 读取图片 """
def get_file_content(filePath):
    with open(filePath, 'rb') as fp:
        return fp.read()

image = get_file_content(path)

options = {}
options["language_type"] = "RUS"
options["detect_direction"] = "true"
options["detect_language"] = "true"

result=client.general(image,options)['words_result']
r=''
for i in range(len(result)):
	r+=result[i]['words']
print(r)