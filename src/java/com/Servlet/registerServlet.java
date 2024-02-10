
package com.Servlet;

import com.DAO.UserDAO;
import com.DBConnect.Connect;
import com.Entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class registerServlet extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       String  name=request.getParameter("uname");
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       
      User us = new User();
      us.setFirstname(name);
        us.setEmail(email);
        us.setPassword(password);
        
        UserDAO dao= new UserDAO(Connect.getConnection());
        boolean f=dao.UserRegister(us);
        if(true)
        {
//            PrintWriter out=response.getWriter();
//            out.print("data inserted successfully");
            HttpSession session=request.getSession();
            session.setAttribute("reg-msg", "registration successfully");
            response.sendRedirect("Registration.jsp ");
           
            
            
        }
        else
        {
//             PrintWriter out=response.getWriter();
//            out.print("data not insert successfully");
            HttpSession session=request.getSession();
            session.setAttribute("reg-msg", "something went wrong server");
            response.sendRedirect("Registration.jsp ");
        }
        
    }

    
   
}// </editor-fold>


