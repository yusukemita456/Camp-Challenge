<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
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
        <title>JUMS登録結果画面</title>
    </head>
    <body>
        <% if(!user.getName().equals("")&&!user.getYear().equals("")&&!user.getMonth().equals("")&&!user.getDay().equals("")&&!user.getType().equals("")&&!user.getTell().equals("")&&!user.getComment().equals("")){ %>　
        <!-- 課題2　アクセスチェック //name,year,month,day,type,tell,commentがすべて入力されているかをチェック-->
        <h1>登録結果</h1><br>
        名前:<%= user.getName()%><br>
        生年月日:<%= user.getYear()+"年"+user.getMonth()+"月"+user.getDay()+"日"%><br>
        種別:<%= user.getType()%><br>
        電話番号:<%= user.getTell()%><br>
        自己紹介:<%= user.getComment()%><br>
        以上の内容で登録しました。<br>
         <p><%=JumsHelper.getInstance().home()%></p>　<!-- 課題１　トップへのリンク -->
            
    </body>
</html>
