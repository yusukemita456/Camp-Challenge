<%-- 
    Document   : challenge3-2
    Created on : 2016/10/26, 17:13:45
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
        
        <%@page import="java.util.*"%>  
   	<%
            
        //課題2:引数として数値を受け取り、その値が奇数か偶数か判別＆表示する処理をメソッドとして制作し、
        //適当な数値に対して奇数・偶数の判別を行ってください    
	String y =num(30);
        out.print(y);
	%>
 
 <%!
 
    String num(int x){
     if(x % 2 == 0){
        return "偶数です";
    }else{
         return "奇数です";
     }
 }
 
 %>
        
        
        
        
    </body>
</html>
