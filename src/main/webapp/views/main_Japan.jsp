<%--
  Created by IntelliJ IDEA.
  User: zhangyuxuan
  Date: 18/4/9
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" charset="utf-8">
    <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
    <link href="../css/jquery-accordion-menu.css" rel="stylesheet" type="text/css"/>
    <link href="../css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <script src="../js/jquery-accordion-menu.js" type="text/javascript"></script>
    <title>google earth test</title>
    <style type="text/css">
        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
        }
        #title{
            position: fixed;
            width:100%;
            height:7%;
            border-bottom-style: solid;
            border-bottom-width:3px;
            border-bottom-color:#A9A9A9;
            background-color: #414956;
            box-sizing:border-box;
        }
        #p1{
            color:#FFFFFF;
            font-size:18px;
            font-weight:600;
            position:relative;
            left:1.2%;
            top:30%;
        }
        .content{
            top:7%;
            width:15%;
            height:93%;
            position: fixed;
            float:left;
            background-color: #414956;
            border-right-style: solid;
            border-right-width:3px;
            border-right-color:#A9A9A9;
            box-sizing:border-box;
        }
        #page {
            left:15%;
            top:7%;
            height: 93%;
            width: 85%;
            box-sizing:border-box;
            position:fixed;
        }

        #demo-list a {
            overflow: hidden;
            text-overflow: ellipsis;
            -o-text-overflow: ellipsis;
            white-space: nowrap;
            width: 100%;
        }
    </style>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            jQuery("#jquery-accordion-menu").jqueryAccordionMenu();

        });
        $(function () {
            //顶部导航切换
            $("#demo-list li").click(function () {
                $("#demo-list li.active").removeClass("active")
                $(this).addClass("active");
            })
        })
    </script>
</head>
<body>
<div id="title">
    <div id="p1">电力设施分析系统</div>
</div>
<div class="content">
    <div id="jquery-accordion-menu" class="jquery-accordion-menu">
        <div class="jquery-accordion-menu-header"></div>
        <ul id="demo-list">
            <li class="active"><a href="map_Japan.jsp"><i class="fa fa-home"></i>电力系统基础信息采集</a>
                <ul class="submenu">
                    <li><a href="testjapan.jsp" target="right">深层网络与聚焦网络爬虫</a></li>
                    <%--<li><a href="test2.jsp" target="right">数据时空自动采集分析 </a></li>--%>
                    <li><a href="test1.jsp" target="right">基于深度神经网络的语义分析</a></li>
                </ul>
            </li>
            <li><a href="map_Japan.jsp"><i class="fa fa-glass"></i>基于图像的目标识别</a>
                <ul class="submenu">
                    <li><a href="retrieval2.html" target="right">目标特征识别</a></li>
                </ul>
            </li>
            <li><a href="map_Japan.jsp"><i class="fa fa-file-image-o"></i>电力系统网络拓扑</a>
                <ul class="submenu">
                    <li><a href="japan_tp.jsp" target="right">地区电网的地理接线图</a></li>
                    <li><a href="Data_Japan.jsp" target="right">发电机数据</a></li>
                    <li><a href="Data_Japan.jsp" target="right">变压器数据</a></li>
                    <li><a href="Data_Japan.jsp" target="right">线路数据</a></li>
                    <li><a href="Data_Japan.jsp" target="right">负荷数据</a></li>
                </ul>
            </li>
            <li><a href="map_Japan.jsp"><i class="fa fa-cog"></i>电力系统评价模型</a>
                <ul class="submenu">
                    <li><a href="111crawler_3.html" target="right">打击目标影响因素分析</a></li>

                    <li><a href="test.html" target="right">打击目标决策问题建模</a></li>
                </ul>
            </li>
        </ul>
        <div class="jquery-accordion-menu-footer">
        </div>
    </div>
</div>
<div id="page">
    <iframe scrolling="no" frameborder="0" src="map_Japan.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>
