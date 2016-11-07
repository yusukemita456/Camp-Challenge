<%-- 
    Document   : challenge
    Created on : 2016/11/07, 13:18:06
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
        <form action="challenge1" method="POST">
            名前:<input type="text" name="name"><br>   
            性別:
            男:<input type="radio" name="gender" value="男">
            女:<input type="radio" name="gender" value="女"><br>
            趣味:<input type="textarea" name="hoby"><br>
            <input type="submit" value="送信" >
            
            
        </form>
    </body>
</html>
