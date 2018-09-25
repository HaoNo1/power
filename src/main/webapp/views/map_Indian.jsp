<%--
  Created by IntelliJ IDEA.
  User: zhangyuxuan
  Date: 18/4/15
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
    <style type="text/css">
        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
        }
        #map{
            width:100%;
            height:100%;
        }
    </style>
</head>
<body>
<div id="map"></div>
<div>
    <script>
        //定义保留小数点后四位的函数
        function decimal4(value) {
            var value = Math.round(parseFloat(value) * 10000) / 10000;
            var s = value.toString();
            var rs = s.indexOf('.');
            if (rs < 0) {
                rs = s.length;
                s += '.';
            }
            while (s.length <= rs + 4) {
                s += '0';
            }
            return s;
        }
        function initMap() {
            //center 属性指示 API 将地图的中心定在何处。
            //zoom 属性指定地图的缩放比例。 Zoom：0 是最低缩放比例，显示整个地球。 将缩放值设置得更高可以更高分辨率放大地球。
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 5.5,
                center: {lat: 22.75, lng: 78.61},
                minZoom: 4.5
            });
            $.getJSON("../json/Indian.json", function (data) {
                $.each(data, function (i) {
                    var Position = {lat: data[i].Lat, lng: data[i].Lng};
                    var marker = new google.maps.Marker({
                        //position 属性设置标记的位置。
                        position: Position,
                        map: map,
                    });
                    var contentString = "<div style='text-align:center;font-size:16px;'><strong>" + data[i].Name +"</strong></div>"
                        +"<div>位置：&nbsp纬度:"+ decimal4(data[i].Lat) + "°&nbsp&nbsp&nbsp&nbsp&nbsp经度:" + decimal4(data[i].Lng) +"°</div>"
                        +"<div>类型：&nbsp"+data[i].Type+"</div>"
                        +"<div>"+"</div>"
                        +"<div>"+"</div>"
                    var infowindow = new google.maps.InfoWindow({
                        content: contentString
                    });

                    marker.addListener('click', function () {
                        infowindow.open(map, marker);
                        map.setCenter(marker.getPosition());
                    });
                });
            });
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#information").click(function () {
                var temp1 = document.getElementById("information");
                temp1.style.display = "none";
                var temp2 = document.getElementById("minInf");
                temp2.style.display = "block";
            });
        });
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCsSL62FiPFsl9cIgqNOJj70eKJhxE4Tyk&callback=initMap">
        /*
         script 从指定网址加载 API。
         callback 参数在 API 加载完毕后执行 initMap 函数。
         async 属性允许浏览器在 API 加载的同时继续渲染页面的其余内容。
         key 参数包含 API 密钥。*/
    </script>
</div>
</body>
</html>
