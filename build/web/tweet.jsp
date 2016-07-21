<%-- 
    Document   : tweet
    Created on : 2016/07/19, 14:53:42
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Origin.ConvertURL"%>
<%@page import="twitter4j.*"%> 

<%
    List<Status> userstatus = (List<Status>)request.getAttribute("userstatus");
    ConvertURL cr = new ConvertURL();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ツイート</title>
    </head>
    <body>
        <form action ="Tweet" method ="POST">
            <label for="tweet">つぶやく</label><br>
            <textarea id="tweet" name="tweet" cols="100" rows="4" maxlength="200" placeholder="つぶやき内容"></textarea>
            <input type="submit" value="つぶやく">
        </form>
    </body>
</html>
