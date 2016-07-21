<%-- 
    Document   : search
    Created on : 2016/06/22, 11:07:02
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Origin.ConvertURL"%>

<%
    String search =request.getParameter("searchtweet");
    ArrayList<String> userID = (ArrayList<String>)request.getAttribute("userID");
    ArrayList<String> profileimg = (ArrayList<String>)request.getAttribute("profileimg");
    ArrayList<String> username = (ArrayList<String>)request.getAttribute("username");
    ArrayList<String> searchresult = (ArrayList<String>)request.getAttribute("resulttweet");
    ConvertURL cr = new ConvertURL();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>検索結果</title>
        <link rel ="stylesheet" href ="stylesheet.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    </head>
    <body>
        <i class="fa fa-search" aria-hidden="true"></i>検索キーワード:<%=search%><br>
        <a href="Timeline"><i class="fa fa-home" aria-hidden="true"></i>
トップページに戻る</a><br>
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
        </table>
    </body>
</html>
