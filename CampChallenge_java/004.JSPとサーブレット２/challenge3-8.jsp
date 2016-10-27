<%-- 
    Document   : challenge3-8
    Created on : 2016/10/27, 13:41:36
    Author     : user2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            String[] prof(int y) {
                String[] pro = {"111", "まさお", "1993/3/3", "青梅"};
                String[] pro2 = {"131", "まさし", "1944/3/3", null};
                String[] pro3 = {"132", "ひさし", "2000/3/3", "青森"};
                String[] pro4 = {"", "", "",};

                switch (y) {
                    case 1:
                        pro4 = pro;
                        break;
                    case 2:
                        pro4 = pro2;
                        break;
                    case 3:
                        pro4 = pro3;
                        break;
                }
                return pro4;
            }

        %>
    
        
        
        <%
            Integer limit=2;
            int z = 1;
            while (z != 3) {
             if (z ==  (limit--)) {
                      break;
                  } 
                String[] prof = prof(z);
          

                    for (int i = 1; i < 4; i++) {
                        if (prof(i) == null) {
                          continue;
                        }
                       out.print(prof[i] + "<br>");
                    }
                 z++;
                
                 
            }
            


                  
        %>
    </body>
</html>
