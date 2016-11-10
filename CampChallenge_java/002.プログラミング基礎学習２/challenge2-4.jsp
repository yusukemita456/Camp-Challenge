<%-- 
    Document   : challenge2-4
    Created on : 2016/10/21, 14:50:54
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
        <h4>課題４．for文を利用して、"A"を30個連結する処理を実現してください。</h4>
        
        <%
        String X = "A";//2-3と同じ要領で計算
        for(int i = 0; i<= 30; i++){
            
            
            
            X = X + "A";
            out.print(X);
            i++;
        }
        
        %>
    </body>
</html>
