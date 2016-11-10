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
               
           //種別　type 総額　total 個数　count
          
           String type = request.getParameter("type");//種別を受け取る
           String total = request.getParameter("total");//総支払額
           String count = request.getParameter("count");//個数
           
           int e = Integer.valueOf(type);//型変換
           String type2;
           if(e == 1){
               type2 = "1：雑貨";
               out.print(type2);//受け取った値から判別
           }else if(e == 2){
               type2 = "２：生鮮食品";
               out.print(type2);
           }else{
               type2 = "3：その他";
               out.print(type2);
           }
           
           
           int a = Integer.valueOf(total); //一度型変換する
           int b = Integer.valueOf(count);
           int c = a / b; //ひとつあたりの金額を計算する
            %>
           
           <h4>②総額と個数から１個当たりの値段を算出してください。総額と１個当たりの値段を表示してください。</h4>
           <%
           out.print("商品種別は" + type2 + "です。              ");//商品種別
           out.print("総額は" + total + "円です。               ");//総額
           out.print("商品のひとつあたりの金額は" + c + "円です。     ");//ひとつあたりの金額
           %>
           
           <h4>③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。購入額に応じたポイントの表示を行ってください。</h4>
         
           <%
           if(a >= 5000){
              double point = a * 0.05;
              out.print("ポイントは" + Math.round(point) + "ptです。        ");
           }else if(a >= 3000){ double point = a * 0.03;
                   out.print("ポイントは" + Math.round(point) + "ptです。        ");
               
           }else{
                  
                   }
           //http://localhost:8080/JavaBasic1/challenge1-7.jsp?type=&total=&count=  これをURLに張り付ける
           

           //http://localhost:8080/JavaBasic1/challenge1-7.jsp?type=2&total=48000&count=5
           
           //結果
           //課題７．クエリストリングを利用して、以下の処理を実現してください。

            //スーパーのレジでレシートを作る仕組みを作成します。 　クエリストリングで総額・個数・商品種別を受け取って処理します。

              //①商品種別は、３つ。１：雑貨、２：生鮮食品、３：その他 　　まずは、この商品種別を表示してください。

               //２：生鮮食品
                //②総額と個数から１個当たりの値段を算出してください。総額と１個当たりの値段を表示してください。

                //商品種別は2です。 総額は48000円です。 商品のひとつあたりの金額は9600円です。
                //③3000円以上購入で4%、5000円以上購入で5%のポイントが付きます。購入額に応じたポイントの表示を行ってください。

                //ポイントは2400ptです。
           

             %>
    </body>
</html>
