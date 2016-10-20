<%-- 
    Document   : challenge1-6
    Created on : 2016/10/20, 15:17:52
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
        <h4>課題６．変数を宣言し、その変数の中身によって以下の表示を行ってください。 ⇒値が 1 なら「１です！」　⇒値が 2 なら「プログラミングキャンプ！」　⇒それ以外なら「その他です！」
</h4>
         <%
             int x = 2;//変数が2の場合プログラミングキャンプ！と表示
          if(x == 1){
              out.print("１です！");
          }else if(x == 2){
          out.print("プログラミングキャンプ！");
          }else{
              out.print("その他です！");
          }
          
          int y = 1;//変数が1の場合１です！と表示
          if(y == 1){
              out.print("１です！");
          }else if(y == 2){
          out.print("プログラミングキャンプ！");
          }else{
              out.print("その他です！");
          }
          
          int z = 3;//変数が3の場合その他です！と表示
          if(z == 1){
              out.print("１です！");
          }else if(z == 2){
          out.print("プログラミングキャンプ！");
          }else{
              out.print("その他です！");
          }
             %>   
    </body>
</html>
