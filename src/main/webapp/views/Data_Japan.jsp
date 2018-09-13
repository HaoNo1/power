<!DOCTYPE html> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="../js/jquery-3.2.1.js" type="text/javascript"></script>
    <style type = "text/css">
    	table.tab {
			font-family: verdana,arial,sans-serif;
			font-size:13px;
			color:#000000;
			border-width: 1px;
			border-color: #a9c6c9;
			border-collapse: collapse;
			margin: 30px auto;
			width:100%;
            height:70%;
		}

		table.tab td {
			border-width: 1px;
			padding: 8px;
			border-style: solid;
			border-color: #000000;
		}
		.box {
			margin: 10px 320px;
		}
		
		.box a{
			margin: 10px 20px;
		}

    </style>
    <script type = "text/javascript">
    	var lenth = 10;
    	var cur = 1;
    	var cnt = 0;
    	var jsonData;

	    window.onload = function() {
	    	var table = $("#tab");
	    	var str = "";
			str += "<tr Bgcolor=#C0C0C0><td>名字</td>";
				str += "<td>发电机数据</td>";
				str += "<td>变压器数据</td>";
				str += "<td>线路数据</td>";
				str += "<td>负荷数据</td></tr>";
    		
	    	$.getJSON("../json/Japan.json",function(data){
	    		jsonData = data;
	    		for(var item in data){  
	    	        cnt++;  
	    	    }
	    		if(cnt != cnt / lenth)
	    			cnt = Math.floor(cnt / lenth);
	    		else cnt = cnt / lenth;
	    		
	    		
	 			$.each(data,function(infoIndex,info){
	 				if(infoIndex >= 0 && infoIndex < lenth)
	 				{
	 					str += "<tr><td>" + info["Name"] + "</td>";
	 					str += "<td>" + info["engdata"] + "</td>";
	 					str += "<td>" + info["chandata"] + "</td>";
	 					str += "<td>" + info["linedata"] + "</td>";
	 					str += "<td>" + info["loaddata"] + "</td></tr>";
	 				} 
	 			})
	 			table.append(str);
	 		})
	 		
	    }
	   
	    function change()
	    {
	    	var table = $("#tab");
    		table.empty();
    		var count = (cur - 1) * lenth;
    		var str = "";
    		str += "<tr Bgcolor=#C0C0C0><td>名字</td>";
			str += "<td>发电机数据</td>";
			str += "<td>变压器数据</td>";
			str += "<td>线路数据</td>";
			str += "<td>负荷数据</td></tr>";

	 			$.each(jsonData,function(infoIndex,info){
	 				
	 				if(infoIndex >= count && infoIndex < count + lenth)
	 				{
	 					str += "<tr><td>" + info["Name"] + "</td>";
	 					str += "<td>" + info["engdata"] + "</td>";
	 					str += "<td>" + info["chandata"] + "</td>";
	 					str += "<td>" + info["linedata"] + "</td>";
	 					str += "<td>" + info["loaddata"] + "</td></tr>";
	 				} 
		 		})
		 		
 			$("#tab").append(str);
	    }
	    
	    
	    function page(s)
	    {
	    	if(s == "F") cur = 1;
	    	else if (s == "W"){
	    		if(cur == 1) alert("已到最前页！")
	    		else cur = cur - 1;
	    	}else if(s == "S"){
	    		if(cur == cnt) alert("已到最末页！")
	    		else cur = cur + 1;
	    	}else cur = cnt;

    		change();
	    	
	    }
	   
	    
	    
    </script>
</head>
<body>
	<table class = "tab" id = "tab" border = "1px">

	</table>
	<div class = "box">
		<button onclick = "page('F')">首页</button>
		<button onclick = "page('W')">上一页</button>
		<button onclick = "page('S')">下一页</button>
		<button onclick = "page('M')">末页</button>
	</div>
</body>
</html>
