<%-- 
    Document   : challenge2-1
    Created on : 2016/10/21, 11:52:22
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
        <h4>課題１．switch文を利用して、以下の処理を実現してください。
　　　　値が1なら「one」、値が2なら「two」、それ以外は「想定外」と表示する処理</h4>
        
        <%
            int i = 2; String message = " "; 
            switch(i){
                //もしiが1ならここが選択される。
                case 1: 
                    message = "one";
                    break;
                //もしiが2ならここが選択される。
                case 2:
                    message = "two";
                    break;
                //もしiがそれ以外ならここが選択される。
                default:
                    message = "想定外";
                    break ;      
            }
            out.print(message);
        %>
        
        
        <%
        //他パターンも記述してみました。上の記述だと代入の分、処理が遅いのではないかと考えました。
        int x = 1; 
            switch(x){
                //もしiが1ならここが選択される。
                case 1: 
                    out.print("one"); 
                    break;
                //もしiが2ならここが選択される。
                case 2:
                    out.print("two"); 
                    break;
                //もしiがそれ以外ならここが選択される。
                default:
                    out.print("想定外"); 
                    break ;      
            }   
        %>

    </body>
</html>
