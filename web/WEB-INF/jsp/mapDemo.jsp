<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/8
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
        #allmap{width:50%;height:500px;}
        p{margin-left:5px; font-size:14px;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=mjw1ragpGQ1DuONN4nQ4ZEC1tdtbGVpE"></script>
    <title>根据关键字本地搜索</title>
</head>
<body>
<div id="allmap"></div>
<div id="r-result">
    城市名: <input id="cityName" type="text" style="width:100px; margin-right:10px;" />
    <input type="button" value="查询" onclick="local()" />
</div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    var point = new BMap.Point(113.30,23.20);
    map.centerAndZoom(point,11);
    function local(){
        var map = new BMap.Map("allmap");

        map.centerAndZoom(document.getElementById("cityName").value, 11);
        var local = new BMap.LocalSearch(map, {
            renderOptions:{map: map}
        });
        local.search("七天");
    }
</script>
