<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    
    UserDataBeans user = new UserDataBeans();
     user = (UserDataBeans) session.getAttribute("user");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(!user.getName().equals("")&&!user.getYear().equals("")&&!user.getMonth().equals("")&&!user.getDay().equals("")&&!user.getType().equals("")&&!user.getTell().equals("")&&!user.getComment().equals("")){ %>
    <!--//課題4 情報が取れたら処理続行↑↑↑↑↑　名前以外が不完全で、生年月日、種別、電話番号、自己紹介を追加しました。-->
    
        <h1>登録確認</h1>
        名前:<%= user.getName()%><br>
        生年月日:<%= user.getYear()+"年"+user.getMonth()+"月"+user.getDay()+"日"%><br>
        種別:<%= user.getType()%><br>
        電話番号:<%= user.getTell()%><br>
        自己紹介:<%= user.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
             <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
    <% } %>
        <form action="insert" method="POST">
           
            <input type="submit" name="no" value="登録画面に戻る">
            <p>TOP<%=JumsHelper.getInstance().home()%></p>　<!-- 課題１　トップへのリンク -->
        </form>
    </body>
</html>
