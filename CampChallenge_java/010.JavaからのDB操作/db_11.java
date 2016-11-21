/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challengedb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.time.LocalDate;
import java.util.regex.Pattern;


/**
 *
 * @author user2
 */
@WebServlet("/JAVADATABASE/db_11")
public class db_11 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection conn = null;
        PreparedStatement db_st = null;
        ResultSet db_data = null;
        request.setCharacterEncoding("UTF-8");
        Integer ID = Integer.parseInt(request.getParameter("profilesID"));
        String name = request.getParameter("namae");
        String Tell = request.getParameter("tell");
        Integer Age = Integer.parseInt(request.getParameter("age"));
         Date Birthday = Date.valueOf(request.getParameter("birthday"));
        
        

        try {
                
                
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            out.print("ドライバのロードに成功しました");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge1_1", "yusuke34", "password");
            out.print("データベースの接続に成功しました");
           
            
            //値の入れ方を指定、その後データの更新処理
            Pattern pattern = Pattern.compile("^[0-9]{4}-[0-9]{2}-[0-9]{2}");
            if(pattern.matcher(request.getParameter("birthday")).matches()){
                
            db_st = conn.prepareStatement("update profiles set name = ?, tell = ?, age = ?,  birthday = ?  where  profilesID= ?");
            
            db_st.setString(1,name);
            db_st.setString(2,Tell);
            db_st.setInt(3,Age);
            db_st.setDate(4,Birthday);
            db_st.setInt(5,ID);
            
           
            db_st.executeUpdate();
             }else {out.print("誕生日は半角でお願いします。");
                conn.close();
                }     
            
            
            //検索処理
            db_st = conn.prepareStatement("select * from profiles");
            db_data = db_st.executeQuery();
       
                
           
             while(db_data.next()){
                
                out.print("<br>" + "ID  " +db_data.getInt("profilesID")  + "名前  " + db_data.getString("name") + "   " + "年齢  " + db_data.getInt("age") + "   " + "電話  " + db_data.getString("tell") + "   " +  "生年月日  " + db_data.getDate("birthday") +  "<br>");
            }
            
            conn.close();
            db_data.close();
            db_st.close();
          
        } catch (SQLException e_sql) {
            out.println("接続時にエラーが発生しました:" + e_sql.toString());
        } catch (Exception e) {
            out.println("接続時にエラーが発生しました:" + e.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    out.print("切断しました");
                } catch (Exception e_conn) {
                    System.out.println(e_conn.getMessage());
                }
            }
            if (conn != null) {
                try {
                    db_st.close();
                    
                }catch(Exception e_st) {
                      System.out.println(e_st.getMessage());
                }
            }
            if (db_data != null) {
                try {
                     db_data.close();
                } catch (Exception e_db) {
                   System.out.println(e_db.getMessage());
                }
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}