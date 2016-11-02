<%-- 
    Document   : challenge hyo-7
    Created on : 2016/11/01, 17:27:25
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
        <%
            //７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、結果を表示してください。
            
          String moji = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";//型を指定し、代入
            moji = moji.replace("U","う");//文字変換
            moji = moji.replace("I", "い");
            out.print(moji);
           %>  
     
            
            
            
            
            
            
        
       
    </body>
</html>
