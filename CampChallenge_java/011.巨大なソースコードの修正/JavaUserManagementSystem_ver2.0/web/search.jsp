<%@page 
        import="jums.JumsHelper" 
        import="javax.servlet.http.HttpSession"%>
<%
    HttpSession hs = request.getSession();
    JumsHelper jh = JumsHelper.getInstance();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報検索画面</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
         <form action="SearchResult" method="GET"> <%-- get --%>
        <h1>JUMSユーザー情報検索画面</h1>
        <h3>以下の項目を入力してください</h3><br>
        <h5>※何も入れてない場合全検索を行います。</h5><br>
        
        名前:
        <input type="text" name="name">
        <br><br>

        生年:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>年生まれ
        <br><br>

        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"><%=jh.exTypenum(i)%><br>
            <% } %>
        <br>
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>"> 
        <input type="submit" name="btnSubmit" value="検索">
    </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
