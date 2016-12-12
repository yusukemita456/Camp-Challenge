<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO)session.getAttribute("resultData");
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
    <a href="index.jsp">TOP</a> > <a href="Search">JUMSユーザー情報検索画面</a>  > <a href="javascript:history.back()">JUMS検索結果画面</a>  > <a href="javascript:history.back()"> 詳細情報</a>  > <a> 削除確認</a><br>    
    <h1>削除確認</h1>
    以下の内容を削除します。よろしいですか？<br>
    名前:<%= udd.getName()%><br>
    生年月日:<%= udd.getBirthday()%><br>
    種別:<%= jh.exTypenum(udd.getType())%><br>
    電話番号:<%= udd.getTell()%><br>
    自己紹介:<%= udd.getComment()%><br>
    登録日時:<%= udd.getNewDate()%><br>
    
    <form action="DeleteResult" method="POST">
       <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>"> 
      <input type="submit" name="YES" value="はい" style="width:100px">
    </form><br>
    <form action="ResultDetail" method="POST">
        
      <input type="submit" onClick="history.go(-1);" value="詳細画面に戻る" style="width:100px"> 
 
    </form>
    <%=jh.home()%>
    </body>
    
</html>
