package jums;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * insertresultと対応するサーブレット
 * フォームから入力された値をセッション経由で受け取り、データベースにinsertする
 * 直接アクセスした場合はerror.jspに振り分け
 * @author hayashi-s
 */
public class InsertResult extends HttpServlet {

    

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
        
        //セッションスタート
        
        
        try{
           
            HttpSession session = request.getSession();
           
            request.setCharacterEncoding("UTF-8");//セッションに格納する文字コードをUTF-8に変更
            String accesschk = request.getParameter("ac");//アクセスチェック
            if(accesschk ==null || (Integer)session.getAttribute("ac")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            //ユーザー情報に対応したJavaBeansオブジェクトに格納していく
            UserDataDTO ud = new UserDataDTO(); //データベース格納用beans
            
            UserDataBeans user = new UserDataBeans(); //一時保存用beans
            user = (UserDataBeans) session.getAttribute("user");//セッター
            
           
            
            String name2 = user.getName(); // UserDataBeansにから取出す
            String type2 = user.getType();
            String tell2= user.getTell();
            String comment2= user.getComment();
            String year2 = user.getYear();
            String month2 = user.getMonth();
            String day2 = user.getDay();
            String dateStr = year2+ "-" + month2+ "-" +day2;
            
            
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");//年月日
            Date birthday = sdf.parse(dateStr);    // Date型変換
            ud.setBirthday(birthday);//UserDataDTOにセット
            
             
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());//現時刻をインスタンス化
            ud.setNewDate(timestamp);//現在時刻セット
           
            ud.setName(name2);//UserDataBeansにからUserDataDTOにセット
            ud.setType(Integer.parseInt(type2));
            ud.setTell(tell2);
            ud.setComment(comment2);
            

            //DBへデータの挿入
            UserDataDAO .getInstance().insert(ud);
            
            request.getRequestDispatcher("/insertresult.jsp").forward(request, response);
        }catch(Exception e){
            //データ挿入に失敗したらエラーページにエラー文を渡して表示
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
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
