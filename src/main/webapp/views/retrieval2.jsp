<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    input.text{
        text-align: center;
        padding:10px 20px;
        width:300px;
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
                                <img src="../images/ship21.jpg" class="img-responsive" width="200px">
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
                                <label style="margin-left: 50px">MP:</label>
                                <label>0.875</label>
                                <!-- <input type="text"  size="10px" value="0.875" disabled="disabled"/> -->
                            </div>
                            <div class="row">
                                <label style="margin-left: 40px">mAP:</label>
                                <label>0.90485</label>
                                <!-- <input type="text" size="10px" value="0.90485" disabled="disabled"/> -->
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-1">
                    <div class="text-center">
                        <button id="targetimage" class="btn btn-primary" >前一张</button>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="text-center">
                        <button id="targetimage" class="btn btn-primary" >后一张</button>
                    </div>
                </div>
                <div class="col-md-1">
                    <div class="text-center">
                        <button id="targetimage" class="btn btn-danger" >识别</button>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                按相似度大小排序输出结果
                            </h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-1">
                                    
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/11.jpg" class="img-responsive" >
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/12.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/13.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/14.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/15.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-1">
                                        
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-1">
                                            
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/16.jpg" class="img-responsive" >
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/17.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/18.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/19.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-2">
                                    <img src="../images/20.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-1">
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    
                </div>
                <div class="col-md-2">
                    <div class="text-left">
                        <button id="prebtn" class="btn btn-primary">前一页</button>
                    </div>
                </div>
                <div class="col-md-2">
                        
                </div>
                <div class="col-md-2">
                    <div class="text-right">
                        <button id="nextbtn" class="btn btn-primary"  disabled="disabled">后一页</button>
                    </div>
                </div>
                <div class="col-md-3">
                        
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