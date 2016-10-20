<%-- 
    Document   : challenge1-7
    Created on : 2016/10/20, 15:19:25
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
        
           <h4>課題７．クエリストリングを利用して、以下の処理を実現してください。</h4>    
           <p>スーパーのレジでレシートを作る仕組みを作成します。
　クエリストリングで総額・個数・商品種別を受け取って処理します。</p>
           <p>　①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他
　　まずは、この商品種別を表示してください。</p>
           <%@page import="java.util.ArrayList" %>
           <% 
               
           //種別　kind 総額　aggregate payment
           //雑貨Miscellaneous goods
           //生鮮食品fresh food
           //その他another
           String kind = request.getParameter("kind");//種別を受け取る
           String agg = request.getParameter("aggregatepayment");//総支払額
           String num = request.getParameter("number");//個数
           
           int e = Integer.valueOf(kind);
          
           if(e == 1){
               out.print("１：雑貨");
           }else if(e == 2){
               out.print("２：生鮮食品");
           }else{
               out.print("３：その他");
           }
           
           
           int a = Integer.valueOf(agg); //http://localhost:8080/JavaBasic1/challenge1-7.jsp/?kind=&aggregatepayment=&number=
           int b = Integer.valueOf(num);
           int c = a / b;
            %>
           
           <h4>②総額と個数から１個当たりの値段を算出してください。総額と１個当たりの値段を表示してください。</h4>
           <%
           out.print("商品種別は" + kind + "です。              ");//商品種別
           out.print("総額は" + agg + "円です。               ");//総額
           out.print("商品のひとつあたりの個数は" + c + "円です。     ");//ひとつあたりの個数
           %>
           
           <h4>③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。購入額に応じたポイントの表示を行ってください。</h4>
         
           <%
           if(a >= 5000){
              double point = a * 0.05;
              out.print("ポイントは" + Math.round(point) + "ptです。        ");
           }else if(a >= 3000){
               
           }else{
                   double point = a * 0.03;
                   out.print("ポイントは" + Math.round(point) + "ptです。        ");
                   }
             %>
    </body>
</html>
