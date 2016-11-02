<%-- 
    Document   : -8
    Created on : 2016/11/02, 14:30:13
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
              <%@page import="java.util.*,java.text.*,java.io.*"%>
        <%

            File txt = new File(application.getRealPath("test.txt"));
            //追記モードでオブジェクト生成
            FileWriter fwa = new FileWriter(txt, true);
            //追記書き込み
            fwa.write("こんばんは,はじめまして");
            //追記クローズ
            fwa.close();
        %>

    </body>
</html>
