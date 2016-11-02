<%-- 
    Document   : challenge hyo-3
    Created on : 2016/11/01, 11:56:07
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
        <%//３．2016年11月4日 10時0分0秒のタイムスタンプを作成し、年-月-日 時:分:秒」で表示してください。
        Calendar cal = Calendar.getInstance();
        cal.set(2016,10,4,10,00,00); //月は-1にする
        Date calpast = cal.getTime();
        out.print(calpast.getTime() + "<br>"); //1480813200814
        
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
        String sdate = sdf.format(calpast); //代入
        out.print(sdate);
        

        %>
        
      
    </body>
</html>
