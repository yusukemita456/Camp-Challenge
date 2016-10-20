<%-- 
    Document   : challenge1-3
    Created on : 2016/10/20, 15:15:02
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
               <h4>課題３．自分の自己紹介を作成してみてください。</h4>
        <%
            String firstName = "Yusuke";
            String lastName = "Mita";
            int age = 24;
            String from = "Yokohama";
            String likeFood = "SUKIYAKI";
            %>
        <%
            out.print("はじめまして。");
            out.print(firstName + " " + lastName + "です。");
            out.print("年齢は" + age + "歳です。");
            out.print(from + "から来てます。");
            out.print("好きな食べ物は" + likeFood +"です。");
            out.print("よろしくお願いします。");
            %>
        
    </body>
</html>
