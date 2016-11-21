/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package challengedb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user2
 */
public class db_6 extends HttpServlet {

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
        
        //課題6:課題2でINSERTしたレコードを指定して削除してください。SELECT*で結果を表示してください

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            out.print("ドライバのロードに成功しました");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge1_1", "yusuke34", "password");
            out.print("データベースの接続に成功しました");
            
            //insert 文　課題2で追加
            
            String sql = "insert into profiles (profilesID,name,tell,age,birthday )values (?, ? , ? , ? , ?)";
            
            db_st = conn.prepareStatement(sql); ///arrayListでの代入も行ったが時間が掛かりすぎたため断念。後日挑戦。
            db_st.setInt(1,55);
            db_st.setString(2,"斎藤さん");
            db_st.setInt(3,1234567543);
            db_st.setInt(4,23);
            db_st.setDate(5,Date.valueOf("1934-01-31")); 
            
            db_st.executeUpdate();
            

            //Delete 文　追加したものを削除
            
            String sql2 = "delete from profiles where profilesID = ? ";
            
            db_st = conn.prepareStatement(sql2); 
            
            db_st.setInt(1,55); 
            
            db_st.executeUpdate();
            
            
          //select 文  
          db_st = conn.prepareStatement("select * from profiles ");
            

            db_data = db_st.executeQuery();

            while(db_data.next()){
                
                out.print("ID" +db_data.getString("profilesID")  + "名前:" + db_data.getString("name") + "年齢" + db_data.getString("age") + "電話" + db_data.getString("tell") + db_data.getString("birthday") +  "<br>");
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