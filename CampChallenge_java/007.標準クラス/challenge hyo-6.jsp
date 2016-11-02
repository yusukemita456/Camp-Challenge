<%-- 
    Document   : challenge hyo-6
    Created on : 2016/11/01, 16:07:09
    Author     : user2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.util.*,java.text.*,java.io.*" %>
        <%
         //６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。

         String addres = "rt2310126rt@gmail.com";
          out.print(addres.substring(12,21));//21で表示
        
        %>
    </body>
</html>
