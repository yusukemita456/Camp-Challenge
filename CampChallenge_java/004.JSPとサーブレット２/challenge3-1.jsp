<%-- 
    Document   : challenge3-1
    Created on : 2016/10/26, 13:49:56
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
     <%!
         //課題1
//自分のプロフィール(名前、生年月日、自己紹介)を3行に分けて表示するユーザー定義メソッドを作り、
//メソッドを10回呼び出して下さい
         
      String getName() {
         return "三田 悠輔<br>";
     }  
         
     String getName(String name) {
          
         return "名前は" + name ;
         
     }
     
     String getBirth() {
         String y = "1992";
         String m = "2";
         String d = "2";
         
         return y + "年" + m + "月" + d + "日<br>";
     }

     String getPro(){
         return "はじめまして<br>";
     }

     
     %>
     
     <%
   
         String namae = getName();
         String tan  = getBirth();
         String prof = getPro();
      
     for(int i = 0; i<10; i++){
         
         
        out.print(namae);
        
        out.print(tan);
        
        out.print(prof);
        
     }
     
     %>
    </body>
</html>
