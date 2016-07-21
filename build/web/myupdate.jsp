<%-- 
    Document   : myupdate
    Created on : 2016/07/11, 17:18:34
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
        <title>ユーザー情報更新</title>
    </head>
    <script src="check.js"></script>
    <body>
        <form name="profile" action ="Myupdateresult" method="POST" onsubmit="check()">
            ユーザー名:<input type="text" name="name" size="30" maxlength="30" value="<%=ud.getName()%>"><br>
            パスワード:<input type="password" name="password" size="30" maxlength="30"><br>
            乗車駅:<input type="text" name="departure" value="<%=ud.getDeparture()%>"><br>
            降車駅:<input type="text" name="arrival" value="<%=ud.getArrival()%>"><br>
            使用路線:<input type="text" name="line" value="<%=ud.getLine()%>">
            <input type="submit" value="送信 onclick="return check()">
        </form>
    </body>
</html>
