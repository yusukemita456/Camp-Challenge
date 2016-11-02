<%-- 
    Document   : challenge hyo-4
    Created on : 2016/11/01, 13:43:22
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
        <%//４．2015年1月1日 0時0分0秒と2015年12月31日 23時59分59秒の差（ミリ秒）を表示してください。
            
        Calendar cal = Calendar.getInstance(); //2015年1月1日 0時0分0秒
        cal.set(2015,0,1,0,00,00); //月は-1にする
        Date calpast = cal.getTime();
        
        Calendar cal2 = Calendar.getInstance(); //2015年12月31日 23時59分59秒
        cal.set(2015,11,31,23,59,59); //月は-1にする
        Date calpast2 = cal2.getTime();
     
        out.print(calpast2.getTime() - calpast.getTime() + "秒");
        
        
        %>
    </body>
</html>
