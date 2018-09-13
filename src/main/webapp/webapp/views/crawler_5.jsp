<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>爬取图片展示</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

<body>
    <div class="container">
        <div class="panel panel-default">
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="row">
                            <label>URL:</label>   
                            <input type="text" style="margin-left:30px" value="http://news.sina.com.cn/w/2017-08-23/doc-ifykcqaw0898856.shtml" size="100" disabled="disabled"/>
                            <!-- <textarea class="form-control" rows="1" disabled="disabled">http://news.sina.com.cn/w/2017-08-23/doc-ifykcqaw0898856.shtml</textarea> -->                        
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <label>标题:</label>
                        <input type="text" style="margin-left:30px" value="美国舰船事故频出 被令暂停行动一天" size="100" disabled="disabled"/>
                        <!-- <textarea class="form-control" rows="1" disabled="disabled">美国舰船事故频出 被令暂停行动一天</textarea> -->
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-5">
                            <label style="margin-left: -15px">时间:</label>
                            <input type="text" style="margin-left:30px" value="2017年08月23日08:08" size="35" disabled="disabled"/>
                        </div>
                            <!-- <textarea class="form-control" rows="1">2017年08月23日08:08</textarea> -->
                        <div class="col-md-6">
                            <label style="margin-left:48px">发布源:</label>
                            <input type="text" style="margin-left:30px" value="新浪新闻" size="35" disabled="disabled"/>
                        </div>
                        <!-- <div class="col-md-5">
                            <textarea class="form-control" rows="1">新浪新闻</textarea>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-body">
                <label>图片:</label>
                <div class="img-rounded">
                    <img src="../newsImages/boat.jpeg" class="img-rounded">
                </div>
            </div>
        </div>

        <div class="panel panel-default">
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-8">
                            <button id="previouspage" class="btn btn-primary" style="margin-left: 10px">上一页</button>
                            <button id="nextpage" class="btn btn-primary" style="margin-left: 10px">下一页</button>
                            <button id="firstpage" class="btn btn-primary" style="margin-left: 10px">首页</button>
                            <button id="lastpage" class="btn btn-primary" style="margin-left: 10px">末页</button>
                        </div>
                        <div class="col-md-2 col-md-offset-2">
                            <button id="extracting" class="btn btn-danger" style="margin-left: 30px">爬取</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>