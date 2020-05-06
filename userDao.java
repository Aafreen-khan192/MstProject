/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dao;

import connection.MyCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.user;

/**
 *
 * @author Lenovo
 */
public class userDao {
      
 
   public boolean checkLogin(String user,String pass) throws SQLException
    {
         String sql;
        Connection con=null;
        sql="select * from login where username=? and password=?";
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
          return true;
        
     return false;
    }            
    
    public int autoIncr() throws SQLException
    {
        String sql;
        Connection con=null;
        sql="select max(Rno) from student";
        int max=101;
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {     
            max=rs.getInt(1);
            max=max+1;
        }    
      return max;
    }
    public int insertinformation(user S) throws SQLException
    {
        String sql;
        Connection con=null;
       
        sql="insert into user values(?,?,?,?,?,?)";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
         ps.setString(1, S.getName());
         ps.setLong(2, S.getAadhar());
         ps.setLong(3, S.getMobile());
          ps.setString(4, S.getInfo1());
            ps.setString(5, S.getInfo2());
            ps.setString(6, S.getDate());
              
         int n=0; 
         n=ps.executeUpdate();
         return(n);   
        
    }
    public List<user> searchAll()throws SQLException
    {
       Connection con=null;
       ResultSet rs=null;
       PreparedStatement ps=null;
       con=MyCon.getConnection();
       String sql;
       sql="select * from user";
       ps=con.prepareStatement(sql);
       rs=ps.executeQuery();
       List<user>mylist=new ArrayList<user>();
       while(rs.next())
       {
                user S=new user();
                
               
                S.setName(rs.getString(1));
               S.setAadhar(rs.getLong(2));
                 S.setMobile(rs.getLong(3));
                   S.setInfo1(rs.getString(4));
                S.setInfo2(rs.getString(5));
                  S.setDate(rs.getString(6));
                mylist.add(S);
                S=null;
       }    
       return mylist;
       
    }

}
