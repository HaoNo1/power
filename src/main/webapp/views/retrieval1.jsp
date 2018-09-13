<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--输出,条件,迭代标签库-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/ui.css">
    <link rel="stylesheet" href="../css/ui.progress-bar.css">
    <title>卫星图像采集</title>
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
    input[type=range] {
        -webkit-appearance: none;
        width: 450px;
        border-radius: 10px; /*这个属性设置使填充进度条时的图形为圆角*/
        background: -webkit-linear-gradient(#059CFA, #059CFA) no-repeat;
        background-size: 0% 100%;
    }
    input[type=range]::-webkit-slider-thumb {
        -webkit-appearance: none;
    }
    /*滑动轨道添加样式*/
    input[type=range]::-webkit-slider-runnable-track {
        height: 15px;
        border-radius: 10px; /*将轨道设为圆角的*/
        box-shadow: 0 1px 1px #def3f8, inset 0 .125em .125em #0d1112; /*轨道内置阴影效果*/
    }
    input[type=range]:focus {
        outline: none;
    }
    /*滑块添加样式*/
    input[type=range]::-webkit-slider-thumb {
        -webkit-appearance: none;
        height: 25px;
        width: 25px;
        margin-top: -5px; /*使滑块超出轨道部分的偏移量相等*/
        background: #ffffff;
        border-radius: 50%; /*外观设置为圆形*/
        border: solid 0.125em rgba(205, 224, 230, 0.5); /*设置边框*/
        box-shadow: 0 .125em .125em #3b4547; /*添加底部阴影*/
    }
    input.text {
        text-align: center;
        padding: 10px 20px;
        width: 300px;
    }
    .img-responsive{
        width:200px;
        height:100px;
    }

    html, body {
        height: 100%;
        width: 100%;
        margin: 0;
        padding: 0;
    }
    #container2{
        height: 180px;
        width: 650px;
        left:2%;
        top:2%;
        position: relative;
    }
    #clock{
        font-family: 'Days One',"Microsoft YaHei", Arial,sans-serif;
        font-size: 20px;
        margin-bottom: 0;
    }
    .starter-template {
        left:68%;
        top:16%;
        position: absolute;
        text-align: center;
    }
    .panel {
        width: 200px;
        margin-left: auto;
        margin-right: auto;
    }
    #text2{
        font-size:35px;
        top: 7%;
        left: 71%;
        position:absolute;
    }
    #btn-reset {
        top: 17.5%;
        left: 88%;
        position:absolute;
    }
    #div2{
        top:10%;
        left:0%;
        position: relative;
    }
</style>

<body>
<div id="container2">
    <div class="content2">
        <h1>本轮卫星图像来源数据采集</h1>
    </div>
    <!-- Progress bar -->
    <div id="progress_bar" class="ui-progress-bar ui-container2">
        <div class="ui-progress" style="width: 79%;">
            <span class="ui-label" style="display:none;">数据获取中...<b class="value">79%</b></span>
        </div>
    </div>
    <!-- /Progress bar -->
</div>
<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/progress.js" type="text/javascript" charset="utf-8"></script>


<div id="text2"><p>下轮爬取倒计时</p></div>
<div class="zzsc-container">
    <div class="container">
        <div class="starter-template">
            <div class="panel panel-default" data-toggle="tooltip" data-placement="top">
                <div class="panel-body">
                    <div class="lead" id="clock"></div>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-primary" id="btn-reset">
            <i class="glyphicon glyphicon-repeat"></i>
            Reset
        </button>
    </div>
</div>
<script type="text/javascript" src="../js/jquery.countdown.min.js"></script>
<script type="text/javascript">
    function getInitNow() {
        return new Date(new Date().valueOf() + 10 * 60 * 1000);
    }

    var $clock = $('#clock');

    $clock.countdown(getInitNow(), function(event) {
        $(this).html(event.strftime('%D days %H:%M:%S'));
    });

    $('#btn-reset').click(function() {
        $clock.countdown(getInitNow());
    });
</script>

<div id="div2">
    <div class="location" id="div1" style="height: 30px"></div>
    <div class="container">


        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <%--<div class="panel panel-default">--%>
                            <%--<div class="panel-heading">--%>
                                <%--<h3 class="panel-title">--%>
                                    <%--爬取库图片--%>
                                <%--</h3>--%>
                            <%--</div>--%>
                            <%--<div class="panel-body">--%>
                                <c:forEach var="page" items="${sessionScope.pages}" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.count %5 ==1}">
                                            <div class="row">
                                            <div class="col-md-1">

                                            </div>
                                            <div class="col-md-2">
                                                <img src=${page} class="img-responsive" >
                                            </div>
                                        </c:when>
                                        <c:when test="${status.count %5 ==0}">
                                            <div class="col-md-2">
                                                <img src=${page} class="img-responsive">
                                            </div>
                                            <div class="col-md-1">

                                            </div>
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="col-md-2">
                                                <img src=${page} class="img-responsive">
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <!--<div class="row">
                                    <div class="col-md-1">

                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_1.jpg" class="img-responsive" >
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_2.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_3.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_4.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_5.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-1">

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1">

                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_6.jpg" class="img-responsive" >
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_2.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_8.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_9.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_10.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-1">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1">

                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_11.jpg" class="img-responsive" >
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_12.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_13.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-2">
                                        <img src="../recogImages/test_14.jpg" class="img-responsive">
                                    </div>
                                    <div class="col-md-1">
                                    </div>
                                </div>
                                -->
                            </div>
                        </div>
                    </div>
                </div>
                <br><br>
            </div>
</div>
<%--<div class="container">--%>


    <%--<div class="row">--%>
        <%--<div class="col-md-12">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                    <%--<div class="panel panel-default">--%>
                        <%--<div class="panel-heading">--%>
                            <%--<h3 class="panel-title">--%>
                                <%--爬取库图片--%>
                            <%--</h3>--%>
                        <%--</div>--%>
                        <%--<div class="panel-body">--%>
                            <%--<c:forEach var="page" items="${sessionScope.pages}" varStatus="status">--%>
                                <%--<c:choose>--%>
                                    <%--<c:when test="${status.count %5 ==1}">--%>
                                        <%--<div class="row">--%>
                                        <%--<div class="col-md-1">--%>

                                        <%--</div>--%>
                                        <%--<div class="col-md-2">--%>
                                            <%--<img src=${page} class="img-responsive" >--%>
                                        <%--</div>--%>
                                    <%--</c:when>--%>
                                    <%--<c:when test="${status.count %5 ==0}">--%>
                                        <%--<div class="col-md-2">--%>
                                            <%--<img src=${page} class="img-responsive">--%>
                                        <%--</div>--%>
                                        <%--<div class="col-md-1">--%>

                                        <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</c:when>--%>
                                    <%--<c:otherwise>--%>
                                        <%--<div class="col-md-2">--%>
                                            <%--<img src=${page} class="img-responsive">--%>
                                        <%--</div>--%>
                                    <%--</c:otherwise>--%>
                                <%--</c:choose>--%>
                            <%--</c:forEach>--%>
                            <%--<!--<div class="row">--%>
                                <%--<div class="col-md-1">--%>

                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_1.jpg" class="img-responsive" >--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_2.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_3.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_4.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_5.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-1">--%>

                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-md-1">--%>

                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_6.jpg" class="img-responsive" >--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_2.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_8.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_9.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_10.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-1">--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="row">--%>
                                <%--<div class="col-md-1">--%>

                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_11.jpg" class="img-responsive" >--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_12.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_13.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-2">--%>
                                    <%--<img src="../recogImages/test_14.jpg" class="img-responsive">--%>
                                <%--</div>--%>
                                <%--<div class="col-md-1">--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%---->--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<br><br>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<script src="../js/RangeSlider.js"></script>
<script>
    var change = function($input) {
        /*内容可自行定义*/
        // console.log("123");
    }

    $('input').RangeSlider({ min: 1,   max: 40,  step: 1,  callback: change});
</script>

</body>
</html>