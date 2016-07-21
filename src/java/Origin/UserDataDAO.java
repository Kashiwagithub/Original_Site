/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Origin;

import DB.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Wataru
 */
public class UserDataDAO {
    public static UserDataDAO getInstance(){
        return new UserDataDAO();
    }
    
    public void insert(UserDataDTO udd) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("INSERT INTO user_t(name,password,departure,arrival,line,newdate,deleteflg) VALUES(?,?,?,?,?,?,?)");
            st.setString(1, udd.getName());
            st.setString(2, udd.getPassword());
            st.setString(3, udd.getDeparture());
            st.setString(4, udd.getArrival());
            st.setString(5, udd.getLine());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            st.setInt(7, udd.getDeleteflg());
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
    
    public UserDataDTO login (UserDataDTO udd)  throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("SELECT * FROM user_t WHERE name = ? AND password = ?");
            st.setString(1, udd.getName());
            st.setString(2, udd.getPassword());
            System.out.println(st);
            ResultSet rs = st.executeQuery();
            
            if(rs.next()){
            udd.setID(rs.getInt("id"));
            udd.setName(rs.getString("name"));
            udd.setPassword(rs.getString("password"));
            udd.setDeparture(rs.getString("departure"));
            udd.setArrival(rs.getString("arrival"));
            udd.setLine(rs.getString("line"));
            udd.setNewdate(rs.getTimestamp("newdate"));
            udd.setDeleteflg(rs.getInt("deleteflg"));
            return udd;
            }
            else{
                return null;
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                try{
                    con.close();
                }catch(SQLException ignore){
                }
            }
            if(st != null){
                try{
                    st.close();
                }catch(SQLException ignore){
                }
            }
        }        
    }

//Update
public void update(UserDataDTO udd) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("UPDATE user_t SET name=?,password=?,departure=?,arrival=?,line=?,newdate=?,deleteflg=? WHERE id = ?");
            st.setString(1, udd.getName());
            st.setString(2, udd.getPassword());
            st.setString(3, udd.getDeparture());
            st.setString(4, udd.getArrival());
            st.setString(5, udd.getLine());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            st.setInt(7, udd.getDeleteflg());
            st.setInt(8, udd.getID());
            st.executeUpdate();
            System.out.println("update completed");
        }catch(SQLException e){
            System.out.println(e.getMessage());
            throw new SQLException(e);
        }finally{
            if(con != null){
                con.close();
            }
        }

    }

//Delete

    public void delete(UserDataDTO udd) throws SQLException{
        Connection con = null;
        PreparedStatement st = null;
        try{
            con = DBManager.getConnection();
            st =  con.prepareStatement("UPDATE user_t SET name=?,password=?,departure=?,arrival=?,line=?,newdate=?,deleteflg=?  WHERE id = ?");
            st.setString(1, udd.getName());
            st.setString(2, udd.getPassword());
            st.setString(3, udd.getDeparture());
            st.setString(4, udd.getArrival());
            st.setString(5, udd.getLine());
            st.setTimestamp(6, new Timestamp(System.currentTimeMillis()));
            st.setInt(7, 1); //deleteflgを1に変更して論理削除　ログイン判定がdeleteFlg=0でログイン可なのでログインできなくなる
            st.setInt(8, udd.getID());
            st.executeUpdate();
            System.out.println("delete completed");
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