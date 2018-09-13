<%--
  Created by IntelliJ IDEA.
  User: qinhao
  Date: 2018/8/23
  Time: 下午8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
            font-size: 18px;
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
            margin: 5px 0 5px 0;
            /*margin: 20px 0 5px 0;*/
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
            padding:3px;
            font-family: Microsoft YaHei;
        }
        .p1{
            margin-top:16px;
        }
        a{
            /*padding: 5px;*/
            font-size: 18px;
        }
    </style>

    <script>
        var page=1;
        url();
        function on(){
            page--;
            console.log(page);
            url();
        }
        function next(){
            page++;
            url();
        }
        //页面加载   获取全部信息
        function url(){
            console.log('1111');
            console.log(page);
            $.ajax({
                type: "GET",//请求方式 可不可以先不懂电脑
                url:"/show/pdf.do",//地址，就是json文件的请求路径
                dataType: "json",//数据类型可以为 text xml json  script  jsonp
                data:{
                    page:page
                },
                success: function(str){//返回的参数就是 action里面所有的有get和set方法的参数
                    console.log('121',str);//结果数组
                    console.log(str);
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
                $("#box").empty();
                $.each(result,function(index,obj){
                    // debugger;
                    console.log('22',obj);

                    $("#box").append(
                        "<div class='product'>"+//获得图片地址

                        // //获得名字
                        "<div class='p1 p'><a href='"+obj+"'>"+obj+"</a></div>"+
                        //获得type
                        // "<div class='p2 p'>"+obj['Type']+"</div>"+
                        // //获得位置
                        // "<div class='p3 p'>"+obj['Lat']+"</div>"+
                        // "<div class='p3 p'>"+obj['Lng']+"</div>"+

                        "</div>");
                    // $('a').attr('href',obj);
                    // var a = obj;
                    <%--$("#"+${obj}).attr('href',obj)--%>

                });

            }
        };

    </script>
</head>
<body>

<button type="button" onclick="on()" class="btn">上一页</button>
<button type="button" onclick="next()" class="btn">下一页</button>
<div id="box">
</div>
</body>
</html>
