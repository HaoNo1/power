# conding=utf-8;
import sys;
path = sys.argv[1]
page = sys.argv[2]
file = open(path+"python/result.txt",'r')
tag = 0
for line in file:
	index1 = line.find(":")
	str1=line[:index1]
	if page == str1:
		tag = 1
		index2 = line.find(",")
		print line[index1+1:index2]
		print line[index2+1:]
		break;
	else:
		continue;
if tag == 0:
	print "no"