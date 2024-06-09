<%-- 
    Document   : login
    Created on : 19-Jan-2023, 9:10:50 pm
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 70%, 73% 73%, 30% 61%, 0% 70%, 0 0);      }
        </style>
    </head>
    <body>
        <%@include file="navb.jsp" %>
       <main class="d-flex align-items-center" style="height: 70vh">
        <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header pbackground text-white text-center">
                                Login here
                            </div>
                            <div class="card-body">
                                <form action="ulogin" method="post">
  <div class="form-group">
    <label for="uid">User ID</label>
    <input type="text" class="form-control" name="uid" id="uid" aria-describedby="emailHelp" placeholder="Enter User ID" required="yes">
   
  </div><div class="form-group">
    <label for="uname">user name</label>
    <input type="text" class="form-control" name="uname" id="uname" placeholder="user name" required="yes">
  </div>
                                    
  <div class="form-group">
    <label for="pwd">Password</label>
    <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password" required="yes">
  </div>
 
  <button type="submit" class="btn btn-primary">Login</button>
</form>
                                  
                                New user <a href="register.jsp"><span class="fa fa-user-plus"></span></a>
                               
                            </div>
                        </div>
                    </div>
                </div>
        </div>
                </main>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
</html>
