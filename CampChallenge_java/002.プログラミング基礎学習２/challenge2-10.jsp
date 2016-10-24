<%-- 
    Document   : challenge2-10jsp
    Created on : 2016/10/24, 14:01:31
    Author     : user2
--%>

<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.paramValueType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>課題１０．クエリストリングを利用して、以下の処理を実現してください。簡易素因数分解のロジックを作成します。クエリストリングから渡された数値を1ケタの素数で可能な限り分解し、元の値と素因数分解の結果を表示するようにしてください。2ケタ以上の素数が含まれた数値の場合は、「元の値　1ケタの素因数　その他」と表記して、その他　に含んでください。</h4>
        <%@page import="java.util.*"%>
        <%

            String number = request.getParameter("param1");     //数字の受付
            Integer num = Integer.valueOf(number);  //受付た数字の型変換

            //2で割れるだけ割り、その数を数える
            int count2 = 0;
            int x = num;
            while (x % 2 == 0) {
                x = x / 2;
                count2++;
            }
            if (count2 != 0) {
                out.print("2" + "×" + count2 + "乗              ");
            } else {

            }
            //3で割れるだけ割り、その数を数える
            int count3 = 0;
            int y = x;
            while (y % 3 == 0) {
                y = y / 3;
                count3++;
            }
            if (count3 != 0) {
                out.print("×3" + "×" + count3 + "乗              ");
            } else {

            }
            //5で割れるだけ割り、その数を数える
            int count5 = 0;
            int z = y;
            while (z % 5 == 0) {
                z = z / 5;
                count5++;
            }
            if (count5 != 0) {
                out.print("×5" + "×" + count5 + "乗              ");
            } else {

            }
            //7で割れるだけ割り、その数を数える
            int count7 = 0;
            int s = z;
            while (s % 7 == 0) {
                s = s / 7;
                count7++;
            }
            if (count7 != 0) {
                out.print("×7" + "×" + count7 + "乗               ");
            } else {

            }
            //その他を数える
            int i = s;
            if (i > 1) {
                out.print("×その他 " + i + "です");
            } else {

            }


        %>




    </body>
</html>
