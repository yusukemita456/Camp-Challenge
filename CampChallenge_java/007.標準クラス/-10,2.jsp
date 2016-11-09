<%-- 
    Document   : -9
    Created on : 2016/11/02, 14:35
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
            //同じ階層にあるファイルをオープン
            File txt = new File(application.getRealPath("log.txt"));

            //読み込みモードでオブジェクト生成
            FileReader fwa = new FileReader(txt);

            //読み込み用にバッファリング(高速化)
            BufferedReader br = new BufferedReader(fwa);

            //一行読み込みして表示,繰り返し
            String str;
            while((str = br.readLine()) != null){
            out.print(str + "<br>");
            
        }
       
            
            //ファイルクローズ
            br.close();
        %>
    </body>
</html>
