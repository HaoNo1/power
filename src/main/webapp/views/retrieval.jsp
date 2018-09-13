<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <!--输出,条件,迭代标签库-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>重点舰船目标识别</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

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
                                <img src="${sessionScope.pageSource}" class="img-responsive" width="200px">
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                K值
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <input type="range" value="0">
                            </div>
                            <div class="row">                                
                                <div class="col-md-1 col-md-offset-4">
                                    <input type="text" style="margin-left: 40px;margin-top: 8px" size="2px" disabled="disabled" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                结果
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <label style="margin-left: 40px">类型:</label>
                                <c:if test="${sessionScope.type =='ns'}"><label>风景(非船)</label></c:if>
                                <c:if test="${sessionScope.type == 'civil'}"><label>民用船</label></c:if>
                                <c:if test="${sessionScope.type == 'ws'}"><label>军舰</label></c:if>
                                <!-- <input type="text"  size="10px" value="0.875" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">准确率:</label>
                                <label>${sessionScope.rate}</label>
                                <!-- <input type="text" size="10px" value="0.90485" disabled="disabled"/> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../goFront.do"><button id="targetimage1" class="btn btn-primary" >前一张</button></a>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../goBack.do"><button id="targetimage2" class="btn btn-primary" >后一张</button></a>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../recog.do"><button id="recog" class="btn btn-danger" >识别</button></a>
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