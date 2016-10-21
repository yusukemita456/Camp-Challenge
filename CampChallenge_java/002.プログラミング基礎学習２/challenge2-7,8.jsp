<%-- 
    Document   : challenge2-7
    Created on : 2016/10/21, 15:51:15
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
        <h4>課題７．以下の順番で、要素が格納された配列を作成してください。"10", "100", "soeda", "hayashi", "-20", "118", "END"</h4>
        <h4>課題８．７で作成した配列の"soeda"を"33"に変更してください</h4>
        <%
            String nArr[] ={"10","100","soeda", "hayashi", "-20", "118", "END"};
            out.print(nArr[2]);
            nArr[2] = "33";
            out.print(nArr[2]);
            




        %>
        
    </body>
</html>
