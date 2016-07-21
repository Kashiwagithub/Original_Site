<%-- 
    Document   : mydelete
    Created on : 2016/07/11, 17:14:47
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
        
        <title>ユーザー情報削除</title>
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
        このユーザーを本当に削除しますか？
        <form action="Mydeleteresult" method="POST">
            <input type="submit" name="yes" value="はい">    
        </form>
        <form action="Timeline" method="POST">
            <input type="submit" name="no" value="いいえ">    
        </form>
    </body>
</html>
