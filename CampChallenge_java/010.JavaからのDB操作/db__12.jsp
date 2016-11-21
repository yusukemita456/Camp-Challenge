<%-- 
    Document   : db12

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
            
            ようこそ！　ここでは名前、年齢、生年月日で、登録された人の情報を検索できます。
            
        
        
        </P>  
        <form action="/JAVADATABASE/db_12" method="POST">  
            
     
        名前？
        <input type="text" name="namae" value="沖田信二" class="textBox"><br>
       
        いくつ？
        <input type="text" name="age" value="98" class="textBox"><br>
        誕生日は？
        <input type="text" name="birthday" value="1901-02-21" class="textBox"><input type="submit" value="データを挿入" class="btn"><br>
        </form>
          
          
          
     
        
    </body>
    
    
    
    
    
</html>
