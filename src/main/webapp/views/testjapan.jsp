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
            padding: 6px 12px;
            margin-bottom: 0;
            font-size: 14px;
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

        .img{
            width: 100px;
            height: 100px;
            float: left;
            margin-right: 20px;
        }
        .p{
            display:inline-block;
            float:left;
            width:50%;
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
                url:"../json/japan.json",//地址，就是json文件的请求路径
                dataType: "json",//数据类型可以为 text xml json  script  jsonp
                success: function(str){//返回的参数就是 action里面所有的有get和set方法的参数
                    console.log('121',str);//结果数组
                    addBox(str);
                    // 接下来显示结果就行
                    // strarr=str.circle;
                    // var result=str.table;这是什么
                    // console.log(strarr);
                }
            });
            /*$.get("item.json",function(result){
                //result数据添加到box容器中;
                addBox(result);
            });*/
            function addBox(result){
                //result是一个集合,所以需要先遍历
                $.each(result,function(index,obj){
                    $("#box").append(
                         "<div class='product'>"+//获得图片地址

                        // //获得名字
                        "<div class='p1 p'>"+obj['Name']+"</div>"+
                        //获得type
                        // "<div class='p2 p'>"+obj['Type']+"</div>"+
                        //获得位置
                        "<div class='p3 p'>"+obj['Lat']+"</div>"+
                        "<div class='p3 p'>"+obj['Lng']+"</div>"+
                        "</div>");
                });
            }
        };

    </script>
</head>
<body >
<form name="sx" action="../test9.do" method="get">
    <table class="table table-striped table-bordered table-hover">
        <tr>
            <%--<td>http://www.ntpc.co.in/en/</td>--%>
            <td>日本国家火电公司</td>
            <td><input  class="btn"  type="submit" value="爬虫"></td>
        </tr>

    </table>

</form>
<form name="pdf" action="../pdf.do" method="get">
    <table class="table table-striped table-bordered table-hover">
        <tr>
            <%--<td>"http://www.ntpc.co.in/en/"</td>--%>
            <td><input  class="btn"  type="submit" value="pdf下载"></td>
        </tr>
    </table>

</form>
<button type="submit" onclick="smy()" class="btn">显示已爬数据</button>
<button type="submit" onclick="smy()" class="btn2">显示数据</button>
<div id="box">
</div>

<%--<div>${sessionScope.s}</div>--%>

</body>
</html>