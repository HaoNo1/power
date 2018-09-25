<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--输出,条件,迭代标签库-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>印度电厂识别</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>

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
</style>
<script language='javascript' type='text/javascript'>
    $(function () {
        var tag = '<%=session.getAttribute("Itag2")%>';
        if(tag=="1"){
            $('.state, #state2').delay(0).hide(0);
            $('#state1').show();
            setTimeout(function () {
                $('.state, #state2').show();
                $('#state1').delay(0).hide(0);
            }, 4000);
        }
    })
</script>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                源图像
                            </h3>
                        </div>
                        <div class="panel-body">
                            <img src="${sessionScope.IpageSource}" class="img-responsive" width="200px">
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>

                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                识别状态及参数
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <label style="margin-left: 40px">当前识别状态:</label>
                                <c:if test="${sessionScope.Itag2 =='1'}"><label id="state1"><font color="red">识别中</font></label></c:if>
                                <c:if test="${sessionScope.Itag =='1'}"><label class="state"><font color="red">已识别</font></label></c:if>
                                <c:if test="${sessionScope.Itag !='1'}"><label class="state"><font color="red">识别中</font></label></c:if>
                                <!-- <input type="text"  size="10px" value="0.875" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">电厂名称:</label>
                                <label class="state">${sessionScope.Iname}</label>
                                <!-- <input type="text"  size="10px" value="0.875" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">地理位置:</label>
                                <label class="state">${sessionScope.Ilatitude},&nbsp${sessionScope.Ilongtitude}</label>
                                <!-- <input type="text"  size="10px" value="0.875" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">电厂类型:</label>
                                <label class="state">${sessionScope.Itype}</label>
                                <!-- <input type="text" size="10px" value="0.90485" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">预测准确率:</label>
                                <label class="state">${sessionScope.Irate}</label>
                                <!-- <input type="text" size="10px" value="0.90485" disabled="disabled"/> -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                识别图像
                            </h3>
                        </div>
                        <div class="panel-body">
                            <c:if test="${sessionScope.Itag =='1'}"><img id="state2" src="${sessionScope.IpageRecog}" class="img-responsive" width="200px"></c:if>
                        </div>
                    </div>
                </div>


            </div>
            <div class="row">
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../IgoFront.do"><button id="targetimage1" class="btn btn-primary" >前一张</button></a>
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../IgoBack.do"><button id="targetimage2" class="btn btn-primary" >后一张</button></a>
                    </div>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                爬取库图片
                            </h3>
                        </div>
                        <div class="panel-body">
                            <c:forEach var="page" items="${sessionScope.Ipages}" varStatus="status">
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
                                    <img src="../recogImages/test_7.jpg" class="img-responsive">
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
        </div>
    </div>
</div>

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