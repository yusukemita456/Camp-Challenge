<%-- 
    Document   : -10
    Created on : 2016/11/08, 13:28:30
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
       Date time = new Date();
       File txt = new File(application.getRealPath("log.txt"));
       FileWriter fwa = new FileWriter(txt,true);//書き込みインスタンス
       fwa.write("開始時間" + time + "\r\n");//開始時間書き込み
       
       final double enshuritu  = 3.14; //円周率の定数
       double ans = keisan();
       double lastAns = ans * ans * enshuritu;//計算
       fwa.write("半径" + ans + "の円の面積は" + lastAns + "です");
       
       Date time2 = new Date();
       fwa.write("終了時間" + time + "\r\n");//終了時間の書き込み
       fwa.flush();//書き込み忘れ防止
       fwa.close();//ファイルを閉じる
       
       
       %> 
       
       
       <%!
           
           final double enshuritu = 3.14;
                
                
                Random rand = new Random(); 
                ArrayList<Integer> al = new ArrayList<Integer>();
                  
                public double keisan(){ //ランダムで円の面積を計算するメソッド
                for (Integer i = 1; i < 100; i++) {
                        al.add(i);
                        i++;
                    }
                 int item = rand.nextInt(al.size());
                 
                 return item;
                }    
              
       %>
    </body>
</html>
