<%-- 
    Document   : registrationcomplete
    Created on : 2016/07/07, 18:26:10
    Author     : Wataru
--%>

<%@page import="Origin.UserData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    HttpSession hs =request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel ="stylesheet" href ="stylesheet.css">
        <title>登録完了</title>
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
        「以上の内容で登録しました。」
        <a href="Timeline"><i class="fa fa-home" aria-hidden="true"></i>トップページに戻る</a>
    </body>
</html>
