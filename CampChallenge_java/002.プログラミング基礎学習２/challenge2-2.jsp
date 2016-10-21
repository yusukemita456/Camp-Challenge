<%-- 
    Document   : challenge2-2
    Created on : 2016/10/21, 14:05:10
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
        <h4>２．switch文を利用して、以下の処理を実現してください。値が"A"なら「英語」、値が"あ"なら「日本語」、それ以外は何も表示しない処理</h4>
        <%
        char x = 'A'; //Stringが認識してくれないためcharを使用。恐らく一文字のため。
        switch(x){
            case 'A':
                out.print("英語");
                break;
            case 'あ':
                out.print("日本語");
                break;
        }
        %>
        
        
    </body>
</html>
