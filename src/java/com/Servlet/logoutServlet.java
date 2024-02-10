
package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logoutServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       HttpSession session=request.getSession();
       session.removeAttribute("user-ob");
       
       HttpSession session2=request.getSession();
       session.setAttribute("logout-msg", "Logout Sucessfully");
       response.sendRedirect("Login.jsp");
       
    }

}
