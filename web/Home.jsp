<%-- 
    Document   : Home
    Created on : Jun 10, 2023, 7:44:14 PM
    Author     : admin
--%>

<%@page import="com.Entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
  User user=(User)session.getAttribute("user-ob");
  
  if(user==null)
  {
   session.setAttribute("login-msg", "Please Login Frist");
   response.sendRedirect("Login.jsp");
  }
  
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         </head>
    <body style="background-image: linear-gradient(to right top, #d06c28, #c78413, #b89a04, #a2b01b, #83c43e); background-attachment: fixed; background-repeat: no-repeat">
            <nav class="navbar navbar-expand-lg navbar-#e53935  bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Login.jsp"><i class="fa fa-user-o" aria-hidden="true"></i>Login</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="Registration.jsp"><i class="fa fa-address-book-o" aria-hidden="true"></i>Registration</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-outline-success my-2 my-sm-0">Login</button>
      <button class="btn btn-outline-success my-2 my-sm-0">Register</button>
    </form>
  </div>
</nav>
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center mt-4">
                <div class="col-md-6">
                    <div class="card">
                        <%
                          User user1=(User)session.getAttribute("user-ob");
                        %>
                        <%
                            if(user!=null)
                            {%>
                               <div class="card-body">   
                               <h1>Name:- <%=user1.getFirstname()%></h1>
                               <h1>Email:- <%=user1.getEmail()%></h1>
                            <div class="container text-center">
                                <a class="btn btn-primary btn-lg text-white " href="logoutServlet">Logout</a>
                            </div>
                        </div>
                            
                            <%}%>
                        
                           
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
