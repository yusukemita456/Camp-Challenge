<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)request.getAttribute("resultData");
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報詳細画面</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <a href="index.jsp">TOP</a> > <a href="Search">JUMSユーザー情報検索画面</a>  > <a href="sarchresult.jsp">JUMS検索結果画面</a>  > <a>詳細情報</a><br>
        <h1>詳細情報</h1>
        名前:<%= udd.getName()%><br>
        生年月日:<%= udd.getBirthday()%><br>
        種別:<%= jh.exTypenum(udd.getType())%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        登録日時:<%= udd.getNewDate()%><br>
        <form action="Update" method="POST">
        
        <input type="hidden" name="name"  value="<%= udd.getName()%>">
        <input type="hidden" name="birthday"  value="<%= udd.getBirthday()%>">
        <input type="hidden" name="type"  value="<%= jh.exTypenum(udd.getType())%>">
        <input type="hidden" name="tell"  value="<%= udd.getTell()%>">
        <input type="hidden" name="comment"  value="<%= udd.getComment()%>">
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>"> 
        <input type="submit" name="update" value="変更" style="width:100px">
        
        
        </form>
        <form action="Delete" method="POST">
        <input type="submit" name="delete" value="削除" style="width:100px">
        </form>
        
        
    </body>
</html>
