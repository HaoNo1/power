<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../css/ui.css">
    <link rel="stylesheet" href="../css/ui.progress-bar.css">
    <title>社交媒体数据爬取</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../js/DataTables/datatables1.css" rel="stylesheet" />
<link href="../css/style.css" rel="stylesheet">

<!--<link href="css/main.css" rel="stylesheet">-->

<style type="text/css">
    html, body {
        height: 100%;
        width: 100%;
        margin: 0;
        padding: 0;
    }
    #container2{
        height: 180px;
        width: 650px;
        left:2%;
        top:2%;
        position: relative;
    }
    #clock{
        font-family: 'Days One',"Microsoft YaHei", Arial,sans-serif;
        font-size: 20px;
        margin-bottom: 0;
    }
    .starter-template {
        left:68%;
        top:16%;
        position: absolute;
        text-align: center;
    }
    .panel {
        width: 200px;
        margin-left: auto;
        margin-right: auto;
    }
    #text2{
        font-size:35px;
        top: 7%;
        left: 71%;
        position:absolute;
    }
    #btn-reset {
        top: 17.5%;
        left: 88%;
        position:absolute;
    }
    #div2{
        top:10%;
        left:0%;
        position: relative;
    }
</style>

<body>
<div id="container2">
    <div class="content2">
        <h1>本轮社交媒体来源数据采集</h1>
    </div>
    <!-- Progress bar -->
    <div id="progress_bar" class="ui-progress-bar ui-container2">
        <div class="ui-progress" style="width: 79%;">
            <span class="ui-label" style="display:none;">数据获取中...<b class="value">79%</b></span>
        </div>
    </div>
    <!-- /Progress bar -->
</div>
<script src="../js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/progress.js" type="text/javascript" charset="utf-8"></script>


<div id="text2"><p>下轮爬取倒计时</p></div>
<div class="zzsc-container">
    <div class="container">
        <div class="starter-template">
            <div class="panel panel-default" data-toggle="tooltip" data-placement="top">
                <div class="panel-body">
                    <div class="lead" id="clock"></div>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-primary" id="btn-reset">
            <i class="glyphicon glyphicon-repeat"></i>
            Reset
        </button>
    </div>
</div>
<script type="text/javascript" src="../js/jquery.countdown.min.js"></script>
<script type="text/javascript">
    function getInitNow() {
        return new Date(new Date().valueOf() + 10 * 60 * 1000);
    }

    var $clock = $('#clock');

    $clock.countdown(getInitNow(), function(event) {
        $(this).html(event.strftime('%D days %H:%M:%S'));
    });

    $('#btn-reset').click(function() {
        $clock.countdown(getInitNow());
    });
</script>

<div id="div2">
    <div class="location" id="div1" style="height: 30px"></div>
    <script language='javascript' type='text/javascript'>
        $(function () {
            $('.news').delay(0).hide(0);
            setTimeout(function () {
                $('#n1').show();
            }, 4000);
            setTimeout(function () {
                $('#n2').show();
            }, 4500);
            setTimeout(function () {
                $('#n3').show();
            }, 4800);
            setTimeout(function () {
                $('#n4').show();
            }, 5000);
            setTimeout(function () {
                $('#n5').show();
            }, 5500);
            setTimeout(function () {
                $('#n6').show();
            }, 5800);
            setTimeout(function () {
                $('#n7').show();
            }, 6000);
            setTimeout(function () {
                $('#n8').show();
            }, 7800);
            setTimeout(function () {
                $('#n9').show();
            }, 8000);
            setTimeout(function () {
                $('#n10').show();
            }, 9000);
            setTimeout(function () {
                $('#n11').show();
            }, 9300);
            setTimeout(function () {
                $('#n12').show();
            }, 9800);
            setTimeout(function () {
                $('#n13').show();
            }, 10000);
            setTimeout(function () {
                $('#n14').show();
            }, 11000);
            setTimeout(function () {
                $('#n15').show();
            }, 12000);
            setTimeout(function () {
                $('#n16').show();
            }, 13000);
            setTimeout(function () {
                $('#n17').show();
            }, 13500);
            setTimeout(function () {
                $('#n18').show();
            }, 14500);
            setTimeout(function () {
                $('#n19').show();
            }, 15000);
            setTimeout(function () {
                $('#n20').show();
            }, 16000);
            setTimeout(function () {
                $('#n21').show();
            }, 16500);
            setTimeout(function () {
                $('#n22').show();
            }, 17000);
            setTimeout(function () {
                $('#n23').show();
            }, 18000);
            setTimeout(function () {
                $('#n24').show();
            }, 20000);
            setTimeout(function () {
                $('#n25').show();
            }, 20500);
            setTimeout(function () {
                $('#n26').show();
            }, 21000);
            setTimeout(function () {
                $('#n27').show();
            }, 21500);
            setTimeout(function () {
                $('#n28').show();
            }, 22000);
            setTimeout(function () {
                $('#n29').show();
            }, 23000);
            setTimeout(function () {
                $('#n30').show();
            }, 23500);
            setTimeout(function () {
                $('#n31').show();
            }, 24000);
            setTimeout(function () {
                $('#n32').show();
            }, 24500);
            setTimeout(function () {
                $('#n33').show();
            }, 25500);
            setTimeout(function () {
                $('#n34').show();
            }, 26500);
            setTimeout(function () {
                $('#n35').show();
            }, 27000);
            setTimeout(function () {
                $('#n36').show();
            }, 28000);
            setTimeout(function () {
                $('#n37').show();
            }, 29000);
            setTimeout(function () {
                $('#n38').show();
            }, 30500);
            setTimeout(function () {
                $('#n39').show();
            }, 32000);
            setTimeout(function () {
                $('#n40').show();
            }, 33000);
            setTimeout(function () {
                $('#n41').show();
            }, 34000);
            setTimeout(function () {
                $('#n42').show();
            }, 34500);
            setTimeout(function () {
                $('#n43').show();
            }, 35000);
            setTimeout(function () {
                $('#n44').show();
            }, 36000);
            setTimeout(function () {
                $('#n45').show();
            }, 38000);
            setTimeout(function () {
                $('#n46').show();
            }, 39000);
            setTimeout(function () {
                $('#n47').show();
            }, 39500);
            setTimeout(function () {
                $('#n48').show();
            }, 40000);
            setTimeout(function () {
                $('#n49').show();
            }, 41000);
            setTimeout(function () {
                $('#n50').show();
            }, 42000);
            setTimeout(function () {
                $('#n51').show();
            }, 43000);
            setTimeout(function () {
                $('#n52').show();
            }, 45000);
            setTimeout(function () {
                $('#n53').show();
            }, 48000);
            setTimeout(function () {
                $('#n54').show();
            }, 49000);
            setTimeout(function () {
                $('#n55').show();
            }, 50500);
            setTimeout(function () {
                $('#n56').show();
            }, 51000);
            setTimeout(function () {
                $('#n57').show();
            }, 52000);
            setTimeout(function () {
                $('#n58').show();
            }, 53000);
            setTimeout(function () {
                $('#n59').show();
            }, 53500);
            setTimeout(function () {
                $('#n60').show();
            }, 54000);
            setTimeout(function () {
                $('#n61').show();
            }, 54500);
            setTimeout(function () {
                $('#n62').show();
            }, 55000);
            setTimeout(function () {
                $('#n63').show();
            }, 55500);
            setTimeout(function () {
                $('#n64').show();
            }, 56000);
            setTimeout(function () {
                $('#n65').show();
            }, 56500);
            setTimeout(function () {
                $('#n66').show();
            }, 57000);
            setTimeout(function () {
                $('#n67').show();
            }, 57500);
            setTimeout(function () {
                $('#n68').show();
            }, 58000);
            setTimeout(function () {
                $('#n69').show();
            }, 58500);
            setTimeout(function () {
                $('#n70').show();
            }, 58800);
            setTimeout(function () {
                $('#n71').show();
            }, 59000);
            setTimeout(function () {
                $('#n72').show();
            }, 59500);
            setTimeout(function () {
                $('#n73').show();
            }, 59800);
            setTimeout(function () {
                $('#n74').show();
            }, 60000);
            setTimeout(function () {
                $('#n75').show();
            }, 60100);
            setTimeout(function () {
                $('#n76').show();
            }, 61000);
            setTimeout(function () {
                $('#n77').show();
            }, 61500);
            setTimeout(function () {
                $('#n78').show();
            }, 61800);
            setTimeout(function () {
                $('#n79').show();
            }, 62000);
            setTimeout(function () {
                $('#n80').show();
            }, 63000);
        })
    </script>
    <div>
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr>
                <th>社交媒体来源</th>
                <th>标题</th>
                <th>图片展示</th>
            </tr>
            </thead>
            <tbody>
            <tr id="n1" class="news">
                <td><a href="detail1.jsp">http://s.weibo.com/weibo/%25E8%2588%25B0%25E8%2588%25B9?topnav=1&wvr=6&b=1</a></td>
                <td>新浪微博 俄罗斯海上大阅兵 光荣级巡洋舰携40艘战舰接受普京检阅</td>
                <th>无图片</th>
            </tr>
            <tr id="n2" class="news">
                <td><a href="detail2.jsp">https://zhuanlan.zhihu.com/p/27148086</a></td>
                <td>知乎（最新版）美国海军舰船命名规则</td>
                <th><a href="../pictures/m2.jpg">相关图片</a></th>
            </tr>
            <tr id="n3" class="news">
                <td><a href="detail3.jsp">https://www.zhihu.com/question/30677302/answer/49101887</a></td>
                <td>知乎 我军最新的052D昆明舰和阿利伯克级相比，哪级舰艇更加先进？</td>
                <th>无图片</th>
            </tr>
            <tr id="n4" class="news">
                <td>https://www.zhihu.com/question/27262470/answer/35984612</td>
                <td>知乎 我国最新的一些舰艇，如052C/D，054，056都划出了大片位置吨位作为直升机机库和停机坪。这样做到底划不划算?</td>
                <th><a href="../pictures/m4.jpg">相关图片</a></th>
            </tr>
            <tr id="n5" class="news">
                <td>https://zhuanlan.zhihu.com/p/41132215</td>
                <td>知乎 伊朗集结百艘舰船在霍尔木兹海峡搞大军演 真能关闭这个海峡？</td>
                <th><a href="../pictures/m5.jpg">相关图片</a></th>
            </tr>
            <tr id="n6" class="news">
                <td>https://tieba.baidu.com/p/2226100871</td>
                <td>百度贴吧 这是英国的什么舰啊？</td>
                <th><a href="../pictures/m6.png">相关图片</a></th>
            </tr>
            <tr id="n7" class="news">
                <td>http://www.xinhuanet.com</td>
                <td>新华网</td>
                <th>img7</th>
            </tr>
            <tr id="n8" class="news">
                <td>http://www.people.com.cn</td>
                <td>人民网</td>
                <th>img8</th>
            </tr>
            <tr id="n9" class="news">
                <td>http://www.chinanews.com</td>
                <td>中国新闻网</td>
                <th>img9</th>
            </tr>
            <tr id="n10" class="news">
                <td>http://news.cctv.com</td>
                <td>央视新闻</td>
                <th>img10</th>
            </tr>
            <tr id="n11" class="news">
                <td>http://www.huanqiu.com</td>
                <td>环球网</td>
                <th>img11</th>
            </tr>
            <tr id="n12" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img12</th>
            </tr>
            <tr id="n13" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img13</th>
            </tr>
            <tr id="n14" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img14</th>
            </tr>
            <tr id="n15" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img15</th>
            </tr>
            <tr id="n16" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img16</th>
            </tr>
            <tr id="n17" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img17</th>
            </tr>
            <tr id="n18" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img18</th>
            </tr>
            <tr id="n19" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img19</th>
            </tr>
            <tr id="n20" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img20</th>
            </tr>
            <tr id="n21" class="news">
                <td>http://news.hao123.com</td>
                <td>热点资讯</td>
                <th>img21</th>
            </tr>
            <tr id="n22" class="news">
                <td>http://news.sina.com.cn</td>
                <td>新浪新闻</td>
                <th>img22</th>
            </tr>
            <tr id="n23" class="news">
                <td>http://news.sohu.com</td>
                <td>搜狐新闻</td>
                <th>img23</th>
            </tr>
            <tr id="n24" class="news">
                <td>http://news.qq.com</td>
                <td>腾讯新闻</td>
                <th>img24</th>
            </tr>
            <tr id="n25" class="news">
                <td>http://news.163.com</td>
                <td>网易新闻</td>
                <th>img25</th>
            </tr>
            <tr id="n26" class="news">
                <td>http://news.ifeng.com</td>
                <td>凤凰资讯</td>
                <th>img26</th>
            </tr>
            <tr id="n27" class="news">
                <td>http://www.xinhuanet.com</td>
                <td>新华网</td>
                <th>img27</th>
            </tr>
            <tr id="n28" class="news">
                <td>http://www.people.com.cn</td>
                <td>人民网</td>
                <th>img28</th>
            </tr>
            <tr id="n29" class="news">
                <td>http://www.chinanews.com</td>
                <td>中国新闻网</td>
                <th>img29</th>
            </tr>
            <tr id="n30" class="news">
                <td>http://news.cctv.com</td>
                <td>央视新闻</td>
                <th>img30</th>
            </tr>
            <tr id="n31" class="news">
                <td>http://www.huanqiu.com</td>
                <td>环球网</td>
                <th>img31</th>
            </tr>
            <tr id="n32" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img32</th>
            </tr>
            <tr id="n33" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img33</th>
            </tr>
            <tr id="n34" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img34</th>
            </tr>
            <tr id="n35" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img35</th>
            </tr>
            <tr id="n36" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img36</th>
            </tr>
            <tr id="n37" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img37</th>
            </tr>
            <tr id="n38" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img38</th>
            </tr>
            <tr id="n39" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img39</th>
            </tr>
            <tr id="n40" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img40</th>
            </tr>
            <tr id="n41" class="news">
                <td>http://news.hao123.com</td>
                <td>热点资讯</td>
                <th>img41</th>
            </tr>
            <tr id="n42" class="news">
                <td>http://news.sina.com.cn</td>
                <td>新浪新闻</td>
                <th>img42</th>
            </tr>
            <tr id="n43" class="news">
                <td>http://news.sohu.com</td>
                <td>搜狐新闻</td>
                <th>img43</th>
            </tr>
            <tr id="n44" class="news">
                <td>http://news.qq.com</td>
                <td>腾讯新闻</td>
                <th>img44</th>
            </tr>
            <tr id="n45" class="news">
                <td>http://news.163.com</td>
                <td>网易新闻</td>
                <th>img45</th>
            </tr>
            <tr id="n46" class="news">
                <td>http://news.ifeng.com</td>
                <td>凤凰资讯</td>
                <th>img46</th>
            </tr>
            <tr id="n47" class="news">
                <td>http://www.xinhuanet.com</td>
                <td>新华网</td>
                <th>img47</th>
            </tr>
            <tr id="n48" class="news">
                <td>http://www.people.com.cn</td>
                <td>人民网</td>
                <th>img48</th>
            </tr>
            <tr id="n49" class="news">
                <td>http://www.chinanews.com</td>
                <td>中国新闻网</td>
                <th>img49</th>
            </tr>
            <tr id="n50" class="news">
                <td>http://news.cctv.com</td>
                <td>央视新闻</td>
                <th>img50</th>
            </tr>
            <tr id="n51" class="news">
                <td>http://www.huanqiu.com</td>
                <td>环球网</td>
                <th>img51</th>
            </tr>
            <tr id="n52" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img52</th>
            </tr>
            <tr id="n53" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img53</th>
            </tr>
            <tr id="n54" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img54</th>
            </tr>
            <tr id="n55" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img55</th>
            </tr>
            <tr id="n56" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img56</th>
            </tr>
            <tr id="n57" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img57</th>
            </tr>
            <tr id="n58" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img58</th>
            </tr>
            <tr id="n59" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img59</th>
            </tr>
            <tr id="n60" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img60</th>
            </tr>
            <tr id="n61" class="news">
                <td>http://news.hao123.com</td>
                <td>热点资讯</td>
                <th>img61</th>
            </tr>
            <tr id="n62" class="news">
                <td>http://news.sina.com.cn</td>
                <td>新浪新闻</td>
                <th>img62</th>
            </tr>
            <tr id="n63" class="news">
                <td>http://news.sohu.com</td>
                <td>搜狐新闻</td>
                <th>img63</th>
            </tr>
            <tr id="n64" class="news">
                <td>http://news.qq.com</td>
                <td>腾讯新闻</td>
                <th>img64</th>
            </tr>
            <tr id="n65" class="news">
                <td>http://news.163.com</td>
                <td>网易新闻</td>
                <th>img65</th>
            </tr>
            <tr id="n66" class="news">
                <td>http://news.ifeng.com</td>
                <td>凤凰资讯</td>
                <th>img66</th>
            </tr>
            <tr id="n67" class="news">
                <td>http://www.xinhuanet.com</td>
                <td>新华网</td>
                <th>img67</th>
            </tr>
            <tr id="n68" class="news">
                <td>http://www.people.com.cn</td>
                <td>人民网</td>
                <th>img68</th>
            </tr>
            <tr id="n69" class="news">
                <td>http://www.chinanews.com</td>
                <td>中国新闻网</td>
                <th>img69</th>
            </tr>
            <tr id="n70" class="news">
                <td>http://news.cctv.com</td>
                <td>央视新闻</td>
                <th>img70</th>
            </tr>
            <tr id="n71" class="news">
                <td>http://www.huanqiu.com</td>
                <td>环球网</td>
                <th>img71</th>
            </tr>
            <tr id="n72" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img72</th>
            </tr>
            <tr id="n73" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img73</th>
            </tr>
            <tr id="n74" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img74</th>
            </tr>
            <tr id="n75" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img75</th>
            </tr>
            <tr id="n76" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img76</th>
            </tr>
            <tr id="n77" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img77</th>
            </tr>
            <tr id="n78" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img78</th>
            </tr>
            <tr id="n79" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img79</th>
            </tr>
            <tr id="n80" class="news">
                <td>http://news.baidu.com</td>
                <td>百度新闻</td>
                <th>img80</th>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>