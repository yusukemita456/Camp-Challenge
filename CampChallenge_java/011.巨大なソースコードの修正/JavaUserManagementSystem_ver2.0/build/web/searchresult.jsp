<%@page import="java.util.ArrayList"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" 
        %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> udd = new ArrayList<UserDataDTO>(); 
    udd = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
        <link href="css/newcss.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <a href="index.jsp">TOP</a> > <a href="Search">JUMSユーザー情報検索画面</a>  > <a>JUMS検索結果画面</a><br>
        <h1>検索結果</h1>
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            
                <% for(int i = 0;i < udd.size();i++){ %> <%-- 検索結果をarrylistの中身分繰返す --%>
            <tr>   
                <td><a href="ResultDetail?id=<%= udd.get(i).getUserID()%>"><%= udd.get(i).getName()%></a></td>
                <td><%= udd.get(i).getBirthday()%></td>
                <td><%= jh.exTypenum(udd.get(i).getType())%></td>
                <td><%= udd.get(i).getNewDate()%></td>
                
            </tr>
            <%}%>
        </table>
            
            
    </body>
    <%=jh.home()%>
</html>
