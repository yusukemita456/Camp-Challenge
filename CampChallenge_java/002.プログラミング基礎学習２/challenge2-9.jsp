<%-- 
    Document   : challenge2-9
    Created on : 2016/10/21, 16:38:06
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
        <h4>課題９．以下の順で、連想配列を作成してください。"1"に"AAA", "hello"に"world", "soeda"に"33", "20"に"20"</h4>
        <%@ page import="java.util.HashMap"%>
        <%
            HashMap<String,String>hMap = new HashMap<String,String>();
            
            hMap.put("1","AAA");
            hMap.put("hello", "world");
            hMap.put("soeda", "33");
            hMap.put("20","20");
            out.print(hMap.get("1"));
            out.print(hMap.get("hello"));
            out.print(hMap.get("soeda"));
            out.print(hMap.get("20"));
            
        %>
    </body>
</html>
