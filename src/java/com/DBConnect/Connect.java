/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DBConnect;
import java.sql.*;

public class Connect 
{
        private static Connection conn ;
    public static Connection getConnection()
    {
       
            try
        {
          if(conn==null)
          {
              Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/students","root","ajit");
          }           
        }
        catch(Exception e)
        {  
            e.printStackTrace();      
        }       
        return conn;       
    }


}
