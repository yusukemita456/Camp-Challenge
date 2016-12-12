<%@page import="jums.UserDataDTO"%>
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    HttpSession hs = request.getSession();
    UserDataBeans udb = (UserDataBeans)hs.getAttribute("udb");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        
    <a href="index.jsp">TOP</a> > <a href="Search">JUMSユーザー情報検索画面</a>  > <a href="javascript:history.back()">JUMS検索結果画面</a>  > <a href="javascript:history.back()"> 詳細情報</a>  > <a> JUMS変更画面</a><br>     
    <form action="UpdateResult" method="POST">
        <h1>JUMS変更画面</h1>
        <h3>以下の項目を入力してください</h3><br>
        
        名前:
        <input type="text" name="name" value="<%= udb.getName()%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%= udb.getYear()%>"><%= udb.getYear()%></option>
            
            <% for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>" ><%=i%></option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%= udb.getMonth()%>"><%= udb.getMonth()%></option>
            
            <% for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>" ><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%= udb.getMonth()%>"><%= udb.getDay()%></option>
            
            <% for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br>
        <input type="radio" name="type" value="1"<% if (udb.getType()==1) {%>checked<%}%>>エンジニア<br>
        <input type="radio" name="type" value="2"<% if (udb.getType()==2) {%>checked<%}%>>営業<br>
        <input type="radio" name="type" value="3"<% if (udb.getType()==3) {%>checked<%}%>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%= udb.getTell()%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%= udb.getComment()%></textarea><br><br>
        
        
        <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=jh.home()%>
        
        
    </body>
</html>
