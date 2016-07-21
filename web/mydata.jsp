<%-- 
    Document   : mydata
    Created on : 2016/07/11, 16:17:53
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Origin.UserData" %>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel ="stylesheet" href ="stylesheet.css">
        <title>ユーザー情報管理ページ</title>
    </head>
    <body>
        <ul>
            <li>
        ユーザー名:<%=ud.getName()%><br>
        パスワード:********<br>
        <br>
        乗車駅:<%=ud.getDeparture()%><br>
        降車駅:<%=ud.getArrival()%><br>
        使用路線:<%=ud.getLine()%><br>
            </li>
        </ul>
        <form action ="Myupdate" method ="POST">
            <input type="submit" value="ユーザー情報の更新">
        </form>
        <form action ="Mydelete" method ="POST">
            <input type="submit" value="ユーザーの削除">
        </form>
    </body>
</html>
