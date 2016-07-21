<%-- 
    Document   : timeline
    Created on : 2016/06/23, 14:31:24
    Author     : Wataru
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.List"%>
<%@page import="Origin.ConvertURL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel ="stylesheet" href ="stylesheet.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <title>Delaylway.com</title>
        <script src='change.js'></script>
    </head>
    <body>
        <h1>Delaylway.com</h1><br>
        <jsp:include page="/footer.jsp" />
        <font size='3'>
        </font><script src='http://pasol.net/JST.js'></script><div id='JSTClock'></div><font size='1'></a></font><br />
        <br>
        <a href="delaycertificate.jsp"><i class="fa fa-file-text" aria-hidden="true"></i>遅延証明書</a><br><br>
        <i class="fa fa-subway" aria-hidden="true"></i>乗換案内
        <br>
        <form id = "change" action = "Trangit" method = "GET">
            乗車駅:<input type="text" name="departure" value="" id="departure">
            <div id="image"><input type="button" value ="↑↓" onclick="change()"></div>
            降車駅:<input type="text" name="arrival" value="" id="arrival"><br>
            <input type="submit" value="検索"><br>
        </form>
        <br>
        <a href="neareststation.jsp"><i class="fa fa-location-arrow" aria-hidden="true"></i>最寄り駅を現在位置から検索</a><br>
        <br>
        <i class="fa fa-search" aria-hidden="true"></i>ツイート検索
        <form action="Searchtweet" method="POST">
        <input type="text" name="searchtweet" placeholder="路線名を入力して下さい" id="searchtweet">
             <input type="submit" value="検索">
	</form>
        <br>
        <i class="fa fa-twitter" aria-hidden="true"></i>
タイムライン
        <table border="1">
        <%
            for (Status status : userstatus) {
        %>
        <tr>
            <td>
        <%
                String img = status.getUser().getBiggerProfileImageURL();
        %>
                <img src="<%=img%>">
            </td>
        <%
                String name = status.getUser().getName();
                String userID = status.getUser().getScreenName();
        %>
            <td>
                <%=name%><br>
                <a href="https://twitter.com/<%=userID%>">@<%=userID%></a>
            </td>
        <%
                String tweet = status.getText()+"<br>"+sdf.format(status.getCreatedAt());
                String cvstr = ConvertURL.convertURL(tweet);
                String via = status.getSource();
        %>
            <td>
                <%=cvstr%>
                <a href="https://twitter.com/intent/tweet?screen_name=<%=userID%>"<i class="fa fa-reply" aria-hidden="true"></i>
<%=userID%>さんへ返信</a>
                <br>
                via <%=via%>
                <%--
                <script>
                    !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],
                    p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id))
                    {js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';
                    fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');
                </script>
                --%>
            </td>
        </tr>
        <%}%>
        </table>
    </body>
</html>
