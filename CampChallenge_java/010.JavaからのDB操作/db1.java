/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challengedb;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author user2
 */
public class db1 extends HttpServlet {

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

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            out.print("ドライバのロードに成功しました");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge1_1", "yusuke34", "password");
            out.print("データベースの接続に成功しました");
            //select文
            
            

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
