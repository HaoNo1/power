# coding=utf-8

import tensorflow as tf 
import numpy as np 
import os
import sys
import codecs
#定义一个比较函数，使最后结果可按序输出
path = sys.argv[1]
def cmp(x,y):
    a = int(x[x.find('_')+1:x.find('.')])
    b = int(y[y.find('_')+1:y.find('.')])
    return a-b;
#Global variables
images = os.listdir(path+"recogImages")     #获得test子目录下的所有图片
if ".DS_Store" in images:
    images.remove(".DS_Store")
images.sort(cmp)   #按照正则表达式排序
outFile = open(path+'python/result.txt','w')
for img in images:
    image_path = path+"recogImages/"+img
    label_path = path+'python/labels.txt'
    model_path = path+'python/model.pb'
    image = tf.gfile.FastGFile(image_path, 'rb').read()
    labels = [line.rstrip() for line in tf.gfile.GFile(path+"python/labels.txt")]

    with tf.gfile.FastGFile(model_path, 'rb') as f:
        graph_def = tf.GraphDef()
        graph_def.ParseFromString(f.read())
        tf.import_graph_def(graph_def, name='')


    with tf.Session() as sess:
        softmax_tensor = sess.graph.get_tensor_by_name('final_result:0')
        
        #predict
        predictions = sess.run(softmax_tensor, {'DecodeJpeg/contents:0': image})
        
        #Sort to show labels of first prediction in order of confidence
        top_k = predictions[0].argsort()[-len(predictions[0]):][::-1]
        
        for node_id in top_k:
            #print(node_id)
            human_string = labels[node_id]
            score = predictions[0][node_id]
            outFile.write(img+':'+human_string+","+str(score)+'\n')
            print(img+"类型 : "+'%s (score = %.5f)' % (human_string, score))
            break
outFile.close()
