<%-- 
    Document   : footter
    Created on : 2016/07/07, 18:33:25
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Origin.UserData" %>
<%
  HttpSession hs= request.getSession();
  UserData ud = new UserData();
    if(hs.getAttribute("ud")!= null){
        ud = (UserData)hs.getAttribute("ud");
    }
        if(ud.getID()!=0){
%>
            ようこそ<a href="Mypage"><%=ud.getName()%></a>さん
            <a href="Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>
ログアウト</a>
<%         
        }else{
%>
            <a href="Login"><i class="fa fa-sign-in" aria-hidden="true"></i>
ログイン</a>
    <%  }   %>
