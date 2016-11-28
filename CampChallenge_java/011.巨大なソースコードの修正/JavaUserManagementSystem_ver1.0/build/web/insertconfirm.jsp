<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
    <% if(!hs.getAttribute("name").equals("")&&!hs.getAttribute("year").equals("")&&!hs.getAttribute("type").equals("")&&!hs.getAttribute("tell").equals("")&&!hs.getAttribute("comment").equals("")){ %>
    <!--//課題4 情報が取れたら処理続行↑↑↑↑↑　名前以外が不完全で、生年月日、種別、電話番号、自己紹介を追加しました。-->
    
        <h1>登録確認</h1>
        名前:<%= hs.getAttribute("name")%><br>
        生年月日:<%= hs.getAttribute("year")+"年"+hs.getAttribute("month")+"月"+hs.getAttribute("day")+"日"%><br>
        種別:<%= hs.getAttribute("type")%><br>
        電話番号:<%= hs.getAttribute("tell")%><br>
        自己紹介:<%= hs.getAttribute("comment")%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>
        <h1>入力が不完全です</h1>
    <% } %>
        <form action="insert" method="POST">
            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="no" value="登録画面に戻る">
            <p>TOP<%=JumsHelper.getInstance().home()%></p>　<!-- 課題１　トップへのリンク -->
        </form>
    </body>
</html>
