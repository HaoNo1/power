<%--
  Created by IntelliJ IDEA.
  User: LJJ
  Date: 2018/9/21
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/jquery-accordion-menu.css" rel="stylesheet" type="text/css"/>
    <link href="../css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
    <style type="text/css">
        .btn{
            color: #fff;
            background-color: #337ab7;
            border-color: #2e6da4;
            display: inline-block;
            padding: 18px 36px;
            margin-bottom: 0;
            font-size: 20px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
        }
        #box {
            overflow-y: auto;
            height: 600px;
        }
        .p1{
            font-size: 14px;
            color: #000;
        }
        .p2{
            font-size: 12px;
            color: #b0b0b0;
        }
        .p3{
            font-size: 14px;
            color: #ff5f19;
        }
        .product{
            width:100%;
            overflow-y: auto;
            position: relative;
            margin: 20px 0 5px 0;
            /*height: 100px;*/
            background: #fafafa;
        }
        .p{
            display:inline-block;
            float:left;
            width:22%;
            margin-top:6px;
            font-family: Microsoft YaHei;
        }
        .p1{
            margin-top:16px;
        }
    </style>
    <script>
        //页面加载   获取全部信息
        function smy(){
            console.log('1111');
            $.ajax({
                type: "GET",//请求方式 可不可以先不懂电脑
                url:"../json/234.json",//地址，就是json文件的请求路径
                dataType: "json",//数据类型可以为 text xml json  script  jsonp
                success: function(str){//返回的参数就是 action里面所有的有get和set方法的参数
                    console.log('121',str);//结果数组
                    addBox(str);
                    // 接下来显示结果就行

                }
            });
            function addBox(result){
                //result是一个集合,所以需要先遍历
                $.each(result,function(index,obj){
                    $("#box").append(
                        "<div class='product'>"+
                        "<div class='p1 p'>"+obj['Iter']+"</div>"+
                        "<div class='p1 p'>"+obj['loss']+"</div>"+
                        "<div class='p1 p'>"+obj['acc']+"</div>"+
                        "<div class='p1 p'>"+obj['prediction']+"</div>"+

                        "</div>");

                });
            }
        };

    </script>
</head>
<body>
<div class="span6">
    <h2 class="lead">
        基于爬虫方式，本项目还将从互联网采集到的信息进行深度网络的语义分析，将相关信息进行分类检索，检索相关属性的有用信息，为电力系统拓扑获取基本信息。
    </h2>



</div>
<button type="submit" onclick="smy()" class="btn">训练</button>

<form name="sx" >
    <table class="table table-striped table-bordered table-hover">
        <tr>
            <td>Iter</td>
            <td>loss</td>
            <td>acc</td>
            <td>prediction</td>
        </tr>

    </table>

</form>


<div id="box">
</div>
</body>
</html>
