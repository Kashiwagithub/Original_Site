<%-- 
    Document   : myupdateresult
    Created on : 2016/07/11, 17:23:41
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
        <title>ユーザー情報更新完了</title>
    </head>
    <body>
        <ul>
            <li>
        ユーザー名:<%=ud.getName()%><br>
        パスワード:********<br>
        乗車駅:<%=ud.getDeparture()%><br>
        降車駅:<%=ud.getArrival()%><br>
        使用路線:<%=ud.getLine()%><br>
            </li>
        </ul>
        「以上の内容で更新しました。」<br>
        <a href="Mypage">マイページに戻る</a>
    </body>
</html>
