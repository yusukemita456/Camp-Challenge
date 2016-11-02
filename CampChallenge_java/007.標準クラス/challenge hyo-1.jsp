<%-- 
    Document   : challenge hyo-1
    Created on : 2016/11/01, 10:57:38
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
     <%     //1.2016年1月1日 0時0分0秒のタイムスタンプを作成し、表示してください。
                String datetime = "2016-01-01 00:00:00:";//時間を指定
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy'-'MM'-'dd' 'HH':'mm':'ss");//時間の表示方法を指定
                Date date = sdf.parse(datetime);//タイムスタンプを作成
                out.print(date.getTime()/1000);//余計な数字を1000で削除
                


                %>
    </body>
</html>
