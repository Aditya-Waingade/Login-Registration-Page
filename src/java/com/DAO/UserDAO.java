
package com.DAO;
import com.Entities.User;
import java.sql.*;


public class UserDAO
{
 private Connection conn;
 public UserDAO(Connection conn)
 {
     super();
     this.conn=conn;
     
 }
 public boolean UserRegister(User us)
 {
     boolean f=false;
     try{
         String q="insert into login(firstname,email,password) values(?,?,?)";
         PreparedStatement ps=conn.prepareStatement(q);
         ps.setString(1,us.getFirstname());
         ps.setString(2, us.getEmail());
         ps.setString(3, us.getPassword());
         ps.executeUpdate();
         f=true;
         
     }
     catch(Exception e)
     {
        e.printStackTrace();
     }
     return false;
     
 }

    public User getLogin(String em,String pass)
  {
       User us=null;
      try{
         
         String q="select * from login where email=? and password=?";
         PreparedStatement pst=conn.prepareStatement(q);
         pst.setString(1, em);
         pst.setString(2, pass);
         
         ResultSet rs=pst.executeQuery();
         
         if(rs.next())
         {
              us=new User(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
              
                     
         }
          
      }catch(Exception e)
      {
          e.printStackTrace();
      }
     return us;
  }
 
 
}