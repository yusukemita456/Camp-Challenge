
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.InsertConfirm" %>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%  
    
    UserDataBeans user = new UserDataBeans();
   if(session.getAttribute("user") != null){
      user = (UserDataBeans) session.getAttribute("user");
   }
   
    

%>
    

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <input type="text" name="name" value="<%= user.getName()%>">
        <br><br>

        生年月日:　
        <select name="year">
            <option value="<%= user.getYear()%>"><%= user.getYear()%></option>
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        <select name="month">
            <option value="<%= user.getMonth()%>"><%= user.getMonth()%></option>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月
        <select name="day">
            <option value="<%= user.getDay()%> "><%= user.getDay()%></option>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>

        種別:
        <br> 
        <input type="radio" name="type" value="1" <% if (user.getType().equals("1")) {%>checked<%}%>>エンジニア<br>
        <input type="radio" name="type" value="2" <% if (user.getType().equals("2")) {%>checked<%}%>>営業<br>
        <input type="radio" name="type" value="3" <% if (user.getType().equals("3")) {%>checked<%}%>>その他<br>
        <br>

        電話番号:
        <input type="text" name="tell" value="<%user.getTell();%>">
        <br><br>

        自己紹介文
        <br>
        <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"><%user.getComment();%></textarea><br><br>
        
        <input type="hidden" name="ac"  value="<%= session.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>　<!-- 課題１　トップへのリンク -->
    </body>
</html>
