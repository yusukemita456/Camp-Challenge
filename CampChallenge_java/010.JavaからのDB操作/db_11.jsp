<%-- 
    Document   : db11

    Created on : 2016/11/18, 15:03:26
    Author     : user2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type ="text/css" >
          form.search {
margin: 0;
}

/* --- ボックス --- */
form.search div {
width: 388px; /* ボックスの幅 */
padding: 1px 0; /* ボックスのパディング（上下、左右） */
background-color: #ffffff; /* ボックスの背景色 */
border: 1px #808080 solid; /* ボックスの境界線 */
}

/* --- テキストボックス --- */
form.search input.textBox {
width: 298px; /* テキストボックスの幅 */
margin: 0 4px 0 5px; /* テキストボックスのマージン（上右下左） */
padding: 0;
background-color: #ffffff; /* テキストボックスの背景色 */
border: none; /* テキストボックスの境界線（なし） */
color: #000000;
}

/* --- ボタン --- */
form.search input.btn {
width: 80px; /* ボタンの幅 */
height: 1.8em; /* ボタンの高さ */
padding: 0;
background: #c08000 url(btn05.gif); /* ボタンの背景 */
border: 1px #c08000 inset; /* ボタンの境界線 */
font-weight: bold;
color: #000000;
letter-spacing: 0.3em; /* 文字間のスペース */
}  
            
            
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <P>
            
            ようこそ！　ここではIDを指定し、名前、電話番号、年齢、生年月日の更新ができます。
            
        
        
        </P>  
        <form action="/JAVADATABASE/db_11" method="POST">  
            
        ID?
        <input type="text" name="profilesID" value="1" class="textBox"><br>
        名前？
        <input type="text" name="namae" value="たなかさん" class="textBox"><br>
        電話？
        <input type="text" name="tell" value="080-11111-11111" class="textBox"><br>
        歳？
        <input type="text" name="age" value="1" class="textBox"><br>
        誕生日？
        <input type="text" name="birthday" value="1990-01-11" class="textBox"><input type="submit" value="データを更新" class="btn">
     
  
        
        
        
        </form>
          
          
          
     
        
    </body>
    
    
    
    
    
</html>
