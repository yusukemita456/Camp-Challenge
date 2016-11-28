<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    
   

%>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% UserDataBeans udb = new UserDataBeans();%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%if(session.getAttribute("name") != null) {out.print(session.getAttribute("name"));}%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%udb.getYear();%>"selected><%if(session.getAttribute("year") != null) {out.print(session.getAttribute("year"));}%></option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%udb.getMonth();%>"select><%if(session.getAttribute("month") != null) {out.print(session.getAttribute("month"));}%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%udb.getDay();%>"select><%if(session.getAttribute("day") != null) {out.print(session.getAttribute("day"));}%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br> 
        <input type="radio" name="type" value="1" >エンジニア<br>
        <input type="radio" name="type" value="2" >営業<br>
        <input type="radio" name="type" value="3" >その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%if(session.getAttribute("tell") != null) {out.print(session.getAttribute("tell"));}%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%if(session.getAttribute("comment") != null) {out.print(session.getAttribute("comment"));}%></textarea><br><br>
        
        <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>　<!-- 課題１　トップへのリンク -->
    </body>
</html>
