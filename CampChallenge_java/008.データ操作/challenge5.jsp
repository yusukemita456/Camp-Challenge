<%-- 
    Document   : challenge
    Created on : 2016/11/07, 13:18:06
    Author     : user2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% HttpSession  hs = request.getSession(true);%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
            
         
        hs.getAttribute("name");//セッションを取り出す
        hs.getAttribute("gender");//セッションを取り出す
        hs.getAttribute("hoby");//セッションを取り出す
        Object gender;
        Object name;
        Object hoby;
        final String checked = "checked";
        String Man = checked;
        String Woman = "";
        gender = hs.getAttribute("gender");
        name = "";
        hoby = "";
        
         if(name!= null) {
         name = hs.getAttribute("name");
        }
        if(hoby != null){
         hoby = hs.getAttribute("hoby");
        }
        
        

        if (gender != null) {
		// 男性の場合
		if (gender.equals("Man")) {
			Man = checked;
			Woman = "";
		}
		// 女性の場合
		else if (gender.equals("Woman")) {
			Man = "";
			Woman = checked;
		}

      }
        %>
        
        
        
        
        
        
        
        <form action="challenge5" method="POST">
            名前:<input type="text" name="name" value="<%=name%>"<br>   
            性別:
            男:<input type="radio" name="gender" value="男" <%=Man%>>
            女:<input type="radio" name="gender" value="女" <%=Woman%>><br>
            趣味:<input type="textarea" name="hoby" value="<%=hoby%>"><br>
            <input type="submit" value="送信" >
            
            
        </form>
    

