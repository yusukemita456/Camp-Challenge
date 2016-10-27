<%-- 
    Document   : challenge3-4
    Created on : 2016/10/26, 22:09:46
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
     
        <%!
            
            String getName() {
         boolean dispflg = true;
        if (dispflg == true) {
        
            }
            
            
            return "三田 悠輔<br>";
         
         
     }  
         
     String getName(String name) {
          
         return "名前は" + name ;
         
     }
     
     String getBirth() {
         String y = "1992";
         String m = "2";
         String d = "2";
         
         return y + "年" + m + "月" + d + "日<br>";
     }

     String getPro(){
         return "はじめまして<br>";
     }
     
     boolean getType(){
    	return true;
    }
     
     %>
     
     <%
   
         String namae = getName();
         String tan  = getBirth();
         String prof = getPro();
         boolean boo = getType();
         
      
     for(int i = 0; i<10; i++){
         
         
        out.print(namae);
        
        out.print(tan);
        
        out.print(prof);
        
        }
        if(boo == true){
            out.print("この処理は正しく実行できました");
     }else{
            out.print("この処理は正しく実行できませんでした");
        }
     
     %>
    </body>
</html>
