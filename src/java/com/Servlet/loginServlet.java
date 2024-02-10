
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

public class loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       String email=request.getParameter("email");
       String password=request.getParameter("password");
       
       UserDAO dao=new UserDAO(Connect.getConnection());
       User user=dao.getLogin(email, password);
        
//        System.out.println("Userrrrr====>>>s"+user)s;
       if(user!=null)
           
       {
//            PrintWriter out=response.getWriter();
//           out.print("Login Sucessfully");
           HttpSession session=request.getSession();
            session.setAttribute("user-ob", user);
            response.sendRedirect("Home.jsp ");
       }
       else
       {
          
//           PrintWriter out=response.getWriter();
//           out.print("Invalid email & password");
           HttpSession session=request.getSession();
            session.setAttribute("erroe-msg", "Invalid email & password");
            response.sendRedirect("Login.jsp");
       }
    }
}
