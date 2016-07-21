<%-- 
    Document   : registrationconfirm
    Created on : 2016/07/07, 18:11:46
    Author     : Wataru
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Origin.Helper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Origin.UserData" %>
<%@page import="javax.servlet.http.HttpSession"%>

<%
    Helper helper =new Helper();
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");
    ArrayList<String> checkList = ud.checkproperties();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <link rel ="stylesheet" href ="stylesheet.css">
        <title>登録確認</title>
    </head>
    <body>
        <%if(checkList.size()==0){ %>
        <ul>
            <li>
        ユーザー名:<%=ud.getName()%><br>
        パスワード:********<br>
        乗車駅:<%=ud.getDeparture()%><br>
        降車駅:<%=ud.getArrival()%><br>
        使用路線:<%=ud.getLine()%><br>
            </li>
        </ul>
        「上記の内容で登録いたします。よろしいですか？」
        <form action="Registrationcomplete" method="POST">
            <input type="submit" name="yes" value="はい">
        </form>
        <%}else{%>      
        <p>入力が不完全です</p>
        <%
            helper.checkinput(checkList);
            }
        %>
        <form action="registration.jsp" method="POST">
            <input type="submit" name="no" value="いいえ">
            <input type="hidden" name="mode" value="REINPUT">
        </form>
    </body>
</html>
