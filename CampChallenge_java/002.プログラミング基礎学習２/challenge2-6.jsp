<%-- 
    Document   : challenge2-6
    Created on : 2016/10/21, 15:29:32
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
        <h4>課題６.while文を利用して、以下の処理を実現してください。1000を2で割り続け、100より小さくなったらループを抜ける処理</h4>
        
        <%
            int i = 1000; 
            while(100 <= i){
            i = i / 2;
            out.print(i + "      ");
        }
            
        %>
        
    </body>
</html>
