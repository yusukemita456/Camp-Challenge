<%-- 
    Document   : challenge3-3
    Created on : 2016/10/26, 21:03:39
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
        
        <%
            //課題3:引き数が3つのメソッドを定義する。1つ目は適当な数値を、
            //2つ目はデフォルト値が5の数値を、最後はデフォルト値がfalse(boolean)のtypeを引き数として定義する。
            //1つ目の引き数に2つ目の引き数を掛ける計算をするメソッドを作成し、typeがfalseの時はその値を表示、
            //trueのときはさらに2乗して表示する。
        int getNum2 = getNum(3, 5, false);
            out.print(getNum2);
        %>
        
        
        <%!
        
        int getNum(int AAA,int BBB,boolean type){
            int   x = AAA  *BBB;
            
            if(type == true){
                x = x*x;
            }else{
                x = x;
            }
           return  x;
        }
        
        %>
    </body>
</html>
