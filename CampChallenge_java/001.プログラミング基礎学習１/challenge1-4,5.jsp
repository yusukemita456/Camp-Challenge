<%-- 
    Document   : challenge1-4
    Created on : 2016/10/20, 15:15:41
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
             <h4>課題４．定数と変数を宣言し、それぞれに数値を入れて四則演算を行ってください。</h4>
         <%
            int a = 100;    //変数aの定義
            final int b = 50;   //定数bの定義   
            %>
             <%
             int add = a + b;
             out.print("a + b");
             out.print(",        ");
             int sub = a - b;
             out.print("a - b");
             out.print(",        ");
             int mul = a * b;
             out.print("a × b");
             out.print(",       ");
             int div = a / b;
             out.print("a ÷ b");
             out.print(",        ");
             %>
          
             
             <h4>課題５．四則演算の結果をそれぞれ表示してください。</h4>
         <%
             out.print(add);  //足算
             out.print(",        ");
             out.print(sub);  //引算
             out.print(",        ");
             out.print(mul);  //乗算
             out.print(",        ");
             out.print(div);  //除算
             %>
                   
    </body>
</html>
