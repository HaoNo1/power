<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>重点舰船目标识别系统</title>
</head>
<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<!--<link href="js/DataTables/datatables1.css" rel="stylesheet" />-->
<!--<link rel="stylesheet" href="css/jquery.mloading.css">-->
<!--<link href="css/style.css" rel="stylesheet">-->
<link href="../css/main.css" rel="stylesheet">

<style type="text/css">
    body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
    #allmap {height:600px; width: 70%;float:left;margin:20px 10px 10px 10px}
    #control{width:100%;}
</style>


<body class="nav-md">
<div class="wrap">
	<div class="header">
    	<p>重点舰船目标识别系统</p>
    </div>
	<div class="main clearfix">
      <div class="content pull-right">
          <div class="contentb" id="contentb">
          	  <iframe src="main.jsp" width="100%" height="100%" scrolling="yes" style="border:none;" name="frame1"></iframe>
          </div>
      </div>
      <div id="sidebar-menu" class="pull-left main_menu_side hidden-print main_menu">
          <div class="menu_section ">
              <ul class="nav side-menu" style="">
                  <li class="active"><a> 舰船时空数据自动采集 <span class="fa fa-chevron-right"></span></a>
                      <ul class="nav child_menu"  style="display:block;">
                        <%--<li><a href="crawler_1.jsp" target="frame1">新闻集导入</a></li>--%>
                        <%--<li><a href="crawler_2.jsp" target="frame1">URL集导入</a></li>--%>
                        <%--<li><a href="crawler_3.jsp" target="frame1">主题关键字集定义</a></li>--错%>
                        <%--<li><a href="crawler_4.jsp" target="frame1">参数值设置</a></li>--%>
                        <%--<li><a href="crawler_5.jsp" target="frame1">爬取图片展示</a></li>--%>
                            <li><a href="crawl_news.jsp" target="frame1">新闻网页来源采集</a></li>
                            <li><a href="crawl_media.jsp" target="frame1">社交媒体来源采集</a></li>
                            <li><a href="crawl_ais.jsp" target="frame1">AIS传讯网站来源采集</a></li>
                            <%--<li><a href="crawl_sar.jsp" target="frame1">卫星图像网站来源采集</a></li>--%>
                            <li><a href="../retrieval1.do" target="frame1">卫星图像网站来源采集</a></li>
                      </ul>
                  </li>
                  <li class="active"><a> 聚焦网络爬虫 <span class="fa fa-chevron-right"></span></a>
                      <ul class="nav child_menu"  style="display:block;">
                          <li><a href="crawler_1.jsp" target="frame1">新闻集导入</a></li>
                          <li><a href="crawler_2.jsp" target="frame1">URL集导入</a></li>
                          <li><a href="crawler_3.jsp" target="frame1">主题关键字集定义</a></li>
                          <li><a href="crawler_4.jsp" target="frame1">参数值设置</a></li>
                          <li><a href="crawler_5.jsp" target="frame1">爬取图片展示</a></li>
                      </ul>
                  </li>
                  <li><a>多语多模态目标数据自动识别<span class="fa fa-chevron-right"></span></a>
                      <ul class="nav child_menu" style="display:block;">
                        <%--<li><a href="../retrieval.do" target="frame1">识别结果</a></li>--%>
                            <li><a href="../retrieval.do" target="frame1">面向图像的舰船目标识别</a></li>
                            <li><a href="../recogwords.do" target="frame1">面向自然场景图像的多语言文本识别</a></li>
                      </ul>
                  </li>

                  <li><a>多源舰船数据融合<span class="fa fa-chevron-right"></span></a>
                      <ul class="nav child_menu" style="display:block;">
                          <%--<li><a href="../retrieval.do" target="frame1">识别结果</a></li>--%>
                          <li><a href="../retrieval.do" target="frame1">时空数据融合下舰船目标深度关联和动态监测</a></li>
                          <li><a href="../retrieval.do" target="frame1">多源舰船目标轨迹分析与预测</a></li>
                      </ul>
                  </li>
              </ul>
          </div>

        </div>
    </div>
</div>
<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<script type="text/javascript">
	function initsize(){
		$window_height = $(document).height();
		$("#contentb").height(($window_height - 110) + "px");
		$("#sidebar-menu").height(($window_height - 50) + "px");
	}
	initsize();
	$(window).resize(function() {
	    initsize();
	});
</script>
</body>
</html>
