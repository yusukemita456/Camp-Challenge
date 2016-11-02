<%-- 
    Document   : challenge hyo-5
    Created on : 2016/11/01, 13:52:49
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
         
       　<%
            //５．自分の氏名について、バイト数と文字数を取得して、表示してください。
            String name = "三田";
            out.println(name.length()+"<br>");//名前の文字数
            out.println(name.getBytes().length);//バイト数
        %>
       
    </body>
</html>
