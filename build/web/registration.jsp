<%-- 
    Document   : registration
    Created on : 2016/07/07, 17:48:34
    Author     : Wataru
--%>

<%@page import="Origin.UserData"%>
<%@page import="Origin.Helper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    HttpSession hs = request.getSession();
    Helper helper = new Helper();
    UserData ud = null;
    boolean reinput = false;
        if(request.getParameter("mode") != null && request.getParameter("mode").equals("REINPUT")){
            reinput = true;
            ud = (UserData)hs.getAttribute("ud");
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <title>新規会員登録</title>
    </head>
    <script src="check.js"></script>
    <body>
        <form name="profile" action="Registrationconfirm" method="POST" onsubmit="check()">
            ユーザー名:<input type="text" name="name" size="30" maxlength="30" value="<%if(reinput){out.print(ud.getName());}%>" autofocus><br>
            パスワード:<input type="password" name="password" size="30" maxlength="30"><br>
            乗車駅:<input type="text" name="departure" size="30" maxlength="30" value="<% if(reinput){out.print(ud.getDeparture());}%>"><br>
            降車駅:<input type="text" name="arrival" size="30" maxlegth="30" value="<% if(reinput){out.print(ud.getArrival());}%>"><br>
            使用路線:<input type="text" name="line" size="30" maxlength="30" value="<% if(reinput){out.print(ud.getLine());}%>"><br>
        <input type="submit" value="送信" onclick="return check();">
        </form>
    </body>
</html>
