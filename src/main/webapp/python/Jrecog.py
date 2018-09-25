# conding=utf-8;
import sys;
path = sys.argv[1]
page = sys.argv[2]
file = open(path+"python/Jresult.txt",'r')
tag = 0
for line in file:
    index1 = line.find(":")
    str1=line[:index1]
    if page == str1:
        tag = 1
        strs = line.split(',')
        print strs[0][index1+2:]
        print strs[1]
        print strs[2]
        print strs[3]
        break;
    else:
        continue;
if tag == 0:
    print "no"