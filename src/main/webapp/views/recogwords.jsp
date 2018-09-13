<%--
  Created by IntelliJ IDEA.
  User: wangzhenpeng
  Date: 2018-08-16
  Time: 11:16
  To change this template use File | Settings | File Templates.
--%>
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

    .img-responsive0{
        width:400px;
        height:224px;
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
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                源图像
                            </h3>
                        </div>
                        <div class="panel-body">
                            <img src="${sessionScope.pageSource}" class="img-responsive0" width="400px">
                        </div>
                    </div>
                </div>



                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                结果
                            </h3>
                        </div>
                        <div class="panel-body">

                            <div class="row">
                                <label style="margin-left: 40px">所含文本:</label>
                                <label>${sessionScope.words}</label>
                                <!-- <input type="text" size="10px" value="0.90485" disabled="disabled"/> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../goFront1.do"><button id="targetimage1" class="btn btn-primary" >前一张</button></a>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="text-center">
                        <a href="../goBack1.do"><button id="targetimage2" class="btn btn-primary" >后一张</button></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="text-center">
                        <a href="../recog1.do"><button id="recog1" class="btn btn-danger" >中英文识别</button></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="text-center">
                        <a href="../recog2.do"><button id="recog2" class="btn btn-danger" >日文识别</button></a>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="text-center">
                        <a href="../recog3.do"><button id="recog3" class="btn btn-danger" >俄文识别</button></a>
                    </div>
                </div>
            </div>
            <br><br>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                库图片预览
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