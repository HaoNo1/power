<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>URL集导入</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../js/DataTables/datatables1.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet">
<!--<link href="css/main.css" rel="stylesheet">-->

<style type="text/css">
    body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
    #allmap {height:600px; width: 70%;float:left;margin:20px 10px 10px 10px}
    #control{width:100%;}
</style>
<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script language='javascript' type='text/javascript'>
    $(function () {
        $('#n1').delay(0).hide(0);
        setTimeout(function () {
            $('#n1').show();
        }, 5000);
    })
</script>


<body>
    <div class="location" id="div1" style="height: 50px">
        <button id="text" class="btn btn-primary" style="margin-left: 10px;margin-top: 8px">文本</button>
        <button id="excel" class="btn btn-primary" style="margin-left: 10px;margin-top: 8px">表格</button>
        <button id="database" class="btn btn-primary" style="margin-left: 10px;margin-top: 8px">数据库</button>
        <button id="newsset" class="btn btn-danger" style="margin-left: 750px;margin-top: 8px">URL集</button>
    </div>
    <div>
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>URL</th>
                    <th>URL标题描述</th>
                </tr>
            </thead>
            <tbody>
                <tr id="n1">
                    <td>http://finance.ifeng.com/a/20171025/15744970_0.shtml</td>
                    <td>印海军将全天候巡航印度洋 并在交通要道部署舰船</td>
                </tr>
                <tr>
                    <td>http://finance.ifeng.com/a/20171005/15709532_0.shtml</td>
                    <td>中国四艘海警舰船在钓鱼岛领海巡航</td>
                </tr>
                <tr>
                    <td>http://news.ifeng.com/a/20170818/51675739_0.shtml</td>
                    <td>日外相：将向菲、越提供16艘舰船 不针对第三国</td>
                </tr>
                <tr>
                    <td>http://news.sina.com.cn/w/2017-08-23/doc-ifykcqaw0898856.shtml</td>
                    <td>美国舰船事故频出 被令暂停行动一天</td>
                </tr>
                <tr>
                    <td>http://slide.mil.news.sina.com.cn/h/slide_8_198_58713.html?img=295048#p=11</td>
                    <td>曾在黄海与我军潜艇对峙！美军小鹰号航母将被拆</td>
                </tr>
                <tr>
                    <td>http://news.sina.com.cn/o/2017-12-02/doc-ifyphtze3522830.shtml</td>
                    <td>深度丨新加坡竟与印度达成海军合作协议？美国背后再度推波助澜！</td>
                </tr>
                <tr>
                    <td>http://m.sohu.com/a/208226240_313834</td>
                    <td>俄新版国家武器装备计划海洋领域将重点发展装备有高精武器的舰船</td>
                </tr>
                <tr>
                    <td>http://www.sohu.com/a/208146061_99931410</td>
                    <td>二战舰船打造成海底人工鱼礁，巨型“章鱼”超抢眼</td>
                </tr>
                <tr>
                    <td>http://mil.news.sina.com.cn/jssd/2017-12-01/doc-ifypikwt0082222.shtml</td>
                    <td>中国海军挺进欧洲惹恼谁？英军想巡南海但舰艇全趴窝</td>
                </tr>
                <tr>
                    <td>http://news.sina.com.cn/o/2017-11-24/doc-ifypacti7782136.shtml</td>
                    <td>日制造业造假丑闻再添一桩 产品涉自卫队舰船飞机</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>