<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
    </head>
    <body style="background-image: linear-gradient(to right top, #d06c28, #c78413, #b89a04, #a2b01b, #83c43e); background-attachment: fixed; background-repeat: no-repeat">
        <%@include file="component/design.jsp" %>
         <nav class="navbar navbar-expand-lg navbar-#e53935   bg-dark">
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
             <div class="row">
                 <div class="col-md-4 offset-md-4">
                     <div class="card">
                         <div class="card-header text-center">
<!--                             <i class="fa fa-user-circle-o fa-3x"></i>-->
                                 <i class="fa fa-user-circle fa-3x"></i>
                             <h5>Register Page</h5>
                         </div>
                         <%
                             String regmsg =(String)session.getAttribute("reg-msg");
                             
                               if(regmsg!=null)
                               {
                               %>
                               <div class="alert alert-success" role="alert"><%=regmsg %>Login..<a href="Login.jsp">click here</a></div>
                                <%
                                    session.removeAttribute("reg-msg");
                                    }
                             %>
                             <div class="card-body">
                                 <form action="registerServlet" method="post">
             <div class="form-group">
    <label for="exampleInputEmail1">First Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="uname" >
    </div>            
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Your Email</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" >
    </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password" >
  </div>
  
  <button type="submit" class="btn btn-primary btn-block badge-pill">Submit</button>
                                 </form>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
    
        

                 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
