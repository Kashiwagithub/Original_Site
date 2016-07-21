<%-- 
    Document   : neareststation
    Created on : 2016/07/19, 11:24:07
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel ="stylesheet" href ="stylesheet.css">
        <title>最寄り駅検索</title>
        <script src="neareststation.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD27r7sfWRSItPkKJM0fJ_j_M9PpXRpIeU&sensor=true"></script>
    </head>
    <h1><i class="fa fa-location-arrow" aria-hidden="true"></i>最寄り駅を位置情報から検索</h1>
    <body onload="neareststation()">
        <div id="mapField" style="width : 500px; height : 300px;"></div><br>
        <form id = "change" action = "Trangit" method = "GET">
            <div id ="neareststation"></div>
            降車駅:<input type="text" name="arrival" value=""><br>
            <input type="submit" value="検索"><br><br>
            <a href="Timeline"><i class="fa fa-home" aria-hidden="true"></i>トップページに戻る</a>
        </form>
    </body>
</html>
