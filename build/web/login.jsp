<%-- 
    Document   : login
    Created on : 2016/07/07, 14:59:27
    Author     : Wataru
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ログイン</title>
        <link rel ="stylesheet" href ="stylesheet.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    </head>
    <script src="logincheck.js"></script>
    <body>
        <a href="Registration"><i class="fa fa-user-plus" aria-hidden="true"></i>
新規会員登録</a><br>
        <form action="Loginresult" method="POST" name="login" onsubmit="logincheck()">
            ユーザー名:<input type="text" name="name" size="30" maxlength="30" autofocus><br>
            パスワード:<input type="password" name="password" size="30" maxlength="30"><br>
            <input type="submit" value="ログイン" onclick="return logincheck();">
        </form>
    </body>
</html>
