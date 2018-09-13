<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>主要关键字定义</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../js/DataTables/datatables1.css" rel="stylesheet" />
<link rel="stylesheet" href="../css/jquery.mloading.css">
<link href="../css/style.css" rel="stylesheet">
<!--<link href="css/main.css" rel="stylesheet">-->

<style type="text/css">
    body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
    #allmap {height:600px; width: 70%;float:left;margin:20px 10px 10px 10px}
    #control{width:100%;}
</style>

<body>

<div class="location" id="div1" style="height: 50px">
    <button id="parameterset" class="btn btn-danger" style="margin-left: 900px;margin-top: 8px">设置关键字</button>
</div>

<div>
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>关键字</th>
            <th>权重值</th>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>舰船</td>
                <td>1.0</td>
            </tr>
            <tr>
                <td>航母</td>
                <td>0.9</td>
            </tr>
            <tr>
                <td>海军</td>
                <td>0.85</td>
            </tr>
            <tr>
                <td>战争</td>
                <td>0.8</td>
            </tr>
            <tr>
                <td>导弹</td>
                <td>0.75</td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>