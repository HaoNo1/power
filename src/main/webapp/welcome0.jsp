<%--
  Created by IntelliJ IDEA.
  User: 81507
  Date: 2018/4/11
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <style>
        html, body{
            width:100%;
            height:100%;
            margin: 0;
            padding: 0;
        }
        .backgroud{
            height: 100%;
            width:100%;
        }
        .p1
        {
            height: 50%;
            width: 17%;
            position:absolute;
            background-color: lightgrey;
            left:25%;
            top:21%;
            -webkit-filter: grayscale(100%);
            -moz-filter: grayscale(100%);
            -ms-filter: grayscale(100%);
            -o-filter: grayscale(100%);
            filter: grayscale(100%);
            filter: gray;
        }
        .p1:hover{
            filter:none;
        }
        .p2{
            height: 50%;
            width: 17%;
            position:absolute;
            background-color: lightgrey;
            left:56%;
            top:21%;
            -webkit-filter: grayscale(100%);
            -moz-filter: grayscale(100%);
            -ms-filter: grayscale(100%);
            -o-filter: grayscale(100%);
            filter: grayscale(100%);
            filter: gray;
        }
        .p2:hover{
            filter:none;
        }
        #pick1{
            position: relative;
            left:5%;
            top:4%;
        }
        #pick2{
            position: relative;
            left:5%;
            top:4%;
        }
        t1{
            font-size: 25px;
            left:18%;
            top:6%;
            position: relative;
            color:black;
        }
        t2{
            font-size: 25px;
            left:18%;
            top:6%;
            position: relative;
            color:black;
        }
    </style>
</head>
<body>
    <div class="backgroud"><img src="pictures/background.jpeg" width="100%" height="100%"/></div>
    <div class="p1"><a href="views/main_ship.jsp"><img id="pick1" src="pictures/ship.jpeg" width="90%" height="80%"/><t1>船舰动态监测</t1></a></div>
    <div class="p2"><a href="views/welcome.jsp"><img id="pick2" src="pictures/fdc.jpg" width="90%" height="80%"/><t2>电力系统监测</t2></a></div>
</body>
</html>
