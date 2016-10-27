<%-- 
    Document   : challenge3-5
    Created on : 2016/10/26, 22:33:46
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
       <%!
        //課題5:戻り値としてある人物のid(数値),名前,生年月日、住所を返却するメソッドを作成し、受け取った後はid以外の値を表示する   
        int getId (){
           return 1233444;
       }
        
       String getName(){
           return "三田";
       }
       
       String getSei(){
           return "1992/2/2";
       }
       
       String getAddres(){
           return "yokohama";
       }
        %>
        
        
        
        <%
        int x = getId();
        String name = getName();
        String sei = getSei();
        String ADD = getAddres();
        
        

        out.print(name + sei + ADD);
        %>
    </body>
</html>
