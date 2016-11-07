/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.awt.Label;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.util.Date;
import javax.enterprise.concurrent.LastExecution;
import javax.servlet.annotation.WebServlet;

/**
 *
 * @author user2
 */
@WebServlet("/challenge4")
public class challenge4 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    
    //　４．３と同じ機能をセッションで作成してください。
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        
            
            
            
       
       //初回の登録      
       Date time = new Date();//現在の日時をインスタンス
       HttpSession  hs = request.getSession(true);//セッションのインスタンス
       hs.setAttribute("LastLogin", time.toString());//セッションを持たせる
        
       out.print("最後のログインは、"+hs.getAttribute("LastLogin"));
       
       
       request.setCharacterEncoding("UTF-8");//コードの選択
        String name = request.getParameter("name");//名前の受取
        String gender = request.getParameter("gender");//性別
        String hoby = request.getParameter("hoby");//趣味
        
        Cookie cs[] = request.getCookies();
        int i = 0;
        if(cs != null){
            for(i = 0;i <cs.length;i++){
            if (cs[i].getName().equals("LastLogin")) {
                out.print("最後のログインは、"+cs[i].getValue());
                break;
         }
        }
         }
        String msg = name + gender + hoby;//情報をまとめる
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet challenge</title>");            
            out.println("</head>");
            out.println("<body>");
             out.println("<p>" + msg +"</p>");//メッセージの表示
            out.println("</body>");
            out.println("</html>");
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
