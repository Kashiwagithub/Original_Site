<%-- 
    Document   : mypage
    Created on : 2016/07/11, 18:11:36
    Author     : Wataru
--%>

<%@page import="Origin.UserData"%>
<%@page import="Origin.ConvertURL"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String search =request.getParameter("searchtweet");
    ArrayList<String> userID = (ArrayList<String>)request.getAttribute("userID");
    ArrayList<String> profileimg = (ArrayList<String>)request.getAttribute("profileimg");
    ArrayList<String> username = (ArrayList<String>)request.getAttribute("username");
    ArrayList<String> searchresult = (ArrayList<String>)request.getAttribute("resulttweet");
    ConvertURL cr = new ConvertURL();
    HttpSession hs = request.getSession();
    UserData ud = (UserData)hs.getAttribute("ud");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <title>マイページ</title>
        <link rel ="stylesheet" href ="stylesheet.css">
        <script src="change.js"></script>
    </head>
    <body>
        <jsp:include page="/footer.jsp" />
        <h1><%=ud.getName()%>さんのマイページ</h1><br>
        <a href="Timeline"><i class="fa fa-home" aria-hidden="true"></i>トップページに戻る</a><br>
        <a href="Mydata"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
プロフィールの編集</a><br>
        <font size='3'>
        </font><script src='http://pasol.net/JST.js'></script><div id='JSTClock'></div><font size='1'></a></font><br />
        <br>
        <i class="fa fa-subway" aria-hidden="true"></i>乗換案内
        <br>
        <form id = "change" action = "Trangit" method = "GET">
            乗車駅:<input type="text" name="departure" value="<%=ud.getDeparture()%>" id="departure">
            <div id="image"><input type="button" value ="↑↓" onclick="change()"></div>
            降車駅:<input type="text" name="arrival" value="<%=ud.getArrival()%>" id="arrival"><br>
            <input type="submit" value="検索">
        </form>
        <br>
        <table border ="1">
        <% 
            for(int i = 0; i < searchresult.size(); i++){
        %>
            <tr>
                <td><img src="<%=profileimg.get(i)%>"></td>
            <td><a href="https://twitter.com/<%=userID.get(i)%>"<%=username.get(i)%></a></td>
        <%
             String str = searchresult.get(i);
             String cvstr = ConvertURL.convertURL(str);
        %>
            <td><%=cvstr%><br>
            </td>
            </tr>
	<%}%>
    </body>
</html>
