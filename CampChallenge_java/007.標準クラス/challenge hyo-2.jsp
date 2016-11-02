<%-- 
    Document   : challenge hyo-2
    Created on : 2016/11/01, 11:18:59
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
        <%@page import="java.util.*,java.text.*"%>
        <% //　２．現在の日時を「年-月-日 時:分:秒」で表示してください。
            Date date = new Date();//現在の時間を作成
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");//変数の表示方法
            String sdate = sdf.format(date);
            out.print(sdate);


        %>         

    </body>
</html>
