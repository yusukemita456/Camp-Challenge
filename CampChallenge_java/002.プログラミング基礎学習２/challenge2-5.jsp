<%-- 
    Document   : challenge2-5
    Created on : 2016/10/21, 14:57:58
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
        <h4>for文を利用して、0から100を全部足す処理を実現してください。</h4>
        <%
        int x = 0;
        int y = 0;
        for(int i = 0; i <= 100; i++){
             
            x++;    //一つずつ増やしていく
            y = y + x;  //答えをストックしながら足していく。
           
           out.print(y + "    ");
           i++;
        }
        
        %>
        
    </body>
</html>
