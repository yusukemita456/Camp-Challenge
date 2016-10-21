<%-- 
    Document   : challenge2-3
    Created on : 2016/10/21, 14:28:11
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
        <h4>課題３．for文を利用して、8を20回掛ける処理を実現してください。</h4>
       
        <%
        long x = 8;//x=8を定義しておく
         for(int i = 0; i <= 20; i++){
           x = x * 8;//xに何度も答えが代入される形にする
           out.print(x);//メモリの関係から20回は表示されない。
           out.print("         ");//空白
           i++;
         
        }
        
        %>
    </body>
</html>
