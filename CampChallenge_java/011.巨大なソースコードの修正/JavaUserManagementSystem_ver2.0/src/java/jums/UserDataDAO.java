package jums;

import base.DBManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;


/**
 * ユーザー情報を格納するテーブルに対しての操作処理を包括する
 * DB接続系はDBManagerクラスに一任
 * 基本的にはやりたい1種類の動作に対して1メソッド
 * @author hayashi-s
 */
public class UserDataDAO {
    
    //インスタンスオブジェクトを返却させてコードの簡略化
    public static UserDataDAO getInstance(){
        return new UserDataDAO();
    }
    
    /**
     * データの挿入処理を行う。現在時刻は挿入直前に生成
     * @param ud 対応したデータを保持しているJavaBeans
     * @throws SQLException 呼び出し元にcatchさせるためにスロー 
     */
    public void insert(UserDataDTO ud) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("INSERT INTO user_t(name,birthday,tell,type,comment,newDate) VALUES(?,?,?,?,?,?)");
            st.setString(1, ud.getName());
            st.setDate(2, new java.sql.Date(ud.getBirthday().getTime()));//指定のタイムスタンプ値からSQL格納用のDATE型に変更
            st.setString(3, ud.getTell());
            st.setInt(4, ud.getType());
            st.setString(5, ud.getComment());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            st.executeUpdate();
            System.out.println("insert completed");
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
    
    /**
     * データの検索処理を行う。
     * @param ud 対応したデータを保持しているJavaBeans
     * @throws SQLException 呼び出し元にcatchさせるためにスロー 
     * @return 検索結果
     */
    public ArrayList<UserDataDTO> search(UserDataDTO ud) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        
       
        try{
            con = DBManager.getConnection(); //sqlドライバー
            
            //
            String sql = "SELECT * FROM user_t"; //追加がなければ全件検索
            boolean flag = false;
            boolean flagnew = false;
            
            
            if (!ud.getName().equals("")) { //nameを探す記述追加処理
                sql += " WHERE name like ?";
                flag = true;   
            }
            if (ud.getBirthday()!=null) { //年を探す記述追加処理
                if(!flag){
                    sql += " WHERE birthday like ?";
                    flag = true;
                }else{
                    sql += " AND birthday like ?";
                }
            }
            if (ud.getType()!=0) { //種別を探す記述追加処理
                if(!flag){
                    sql += " WHERE type like ?";
                }else{
                    sql += " AND type like ?";
                }
            }
            
            flag = false;
            flagnew = false;
            st =  con.prepareStatement(sql); //sql文
             if (!ud.getName().equals("")) {
                st.setString(1, "%"+ud.getName()+"%"); //nameをsql文へ渡す処理
                flag = true;   //処理を行った印
                
            }
            if (ud.getBirthday()!=null) { //年をsql文へ渡す処理
                if(!flag){
                    st.setString(1, "%"+ new SimpleDateFormat("yyyy").format(ud.getBirthday())+"%");
                    flag = true; //処理を行った印
                    
                }else{
                    st.setString(2, "%"+ new SimpleDateFormat("yyyy").format(ud.getBirthday())+"%");
                    flagnew = true; //処理を行った印
                }
            }
            if (ud.getType()!=0) { //種別をsql文へ渡す処理
                if(!flag){ //nameのsql追加処理がない場合
                    st.setInt(1, ud.getType());
                    
                }else if(!flagnew){ //年のsql追加処理がない場合
                    st.setInt(2, ud.getType());
                }else{ //name,brith共に処理がある場合
                    st.setInt(3, ud.getType());
                }
            }

            ResultSet rs = st.executeQuery();
            
            //検索結果をarrylistへ
           ArrayList<UserDataDTO> udList = new ArrayList<UserDataDTO>(); 
            while(rs.next()){
           UserDataDTO resultUd = new UserDataDTO(); 
            resultUd.setUserID(rs.getInt(1));
            resultUd.setName(rs.getString(2));
            resultUd.setBirthday(rs.getDate(3));
            resultUd.setTell(rs.getString(4));
            resultUd.setType(rs.getInt(5));
            resultUd.setComment(rs.getString(6));
            resultUd.setNewDate(rs.getTimestamp(7));
            udList.add(resultUd); 
            
            }
            
            System.out.println("search completed");
            return udList;
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
    
    /**
     * ユーザーIDによる1件のデータの検索処理を行う。
     * @param ud 対応したデータを保持しているJavaBeans
     * @throws SQLException 呼び出し元にcatchさせるためにスロー 
     * @return 検索結果
     */
    public UserDataDTO searchByID(UserDataDTO ud) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            
            String sql = "SELECT * FROM user_t WHERE userID = ?";
            
            st =  con.prepareStatement(sql);
            st.setInt(1, ud.getUserID());
            
            ResultSet rs = st.executeQuery();
           
            UserDataDTO resultUd = new UserDataDTO();
            
            rs.next();
            resultUd.setUserID(rs.getInt(1));
            resultUd.setName(rs.getString(2));
            resultUd.setBirthday(rs.getDate(3));
            resultUd.setTell(rs.getString(4));
            resultUd.setType(rs.getInt(5));
            resultUd.setComment(rs.getString(6));
            resultUd.setNewDate(rs.getTimestamp(7));
            
            
            
            System.out.println("searchByID completed");

            return resultUd;
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
     /**
     * ユーザーIDによる1件のデータの更新を行う。
     */
    public void update(UserDataDTO udd,UserDataDTO id) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
         String sql =  "update user_t set name=?,birthday=?,tell=?,type=?,comment=?,newDate =? where userID=?";
            
            con = DBManager.getConnection();
            st = con.prepareStatement(sql);
            st.setString(1,udd.getName());
            st.setDate(2, new java.sql.Date(udd.getBirthday().getTime()));
            st.setString(3, udd.getTell());
            st.setInt(4, udd.getType());
            st.setString(5, udd.getComment());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            st.setInt(7, id.getUserID());
            st.executeUpdate();
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
     /**
     * ユーザーIDによる1件のデータの削除を行う。
     */
    public void delete(UserDataDTO udd) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            String sql = "delete from user_t where userID = ?";
            con = DBManager.getConnection();
            st = con.prepareStatement(sql);
           st.setInt(1,udd.getUserID());
            st.executeUpdate();
            
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }
}
