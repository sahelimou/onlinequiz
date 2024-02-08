<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
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
        
        <main  class="d-flex align-items-center" style="height: 100vh">
            <div class="container">
                <div class="col-md-4 offset-md-4">
                     <div class="card">
                            <div class="card-header pbackground text-white text-center">
                               <span class="fa fa-user-plus"></span> register yourself
                            </div>
                                       <div class="card-body">
                                           <form action="register" method="post">         
   <div class="form-group">
    <label for="uname">User name</label>
    <input type="text" class="form-control" name="uname" id="uname" aria-describedby="emailHelp" placeholder="Enter name" required="yes">
    
  </div> 
              <div class="form-group">
    <label for="pwd">Password</label>
    <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Enter Password" required="yes">
  </div>
                                               <div class="form-group">
                             <label>Role</label>
                            <div class="form-check">
  <input class="form-check-input" type="radio" name="role" id="Radios1" value="1" checked>
  <label class="form-check-label" for="Radios1">
    Quiz creator
  </label>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="role" id="Radios2" value="2">
  <label class="form-check-label" for="Radios2">
    Perticipant
  </label>
</div></div>
  <div class="form-group">
    <label for="em">Email address</label>
    <input type="email" class="form-control" name="em" id="em" aria-describedby="emailHelp" placeholder="Enter email" required="yes">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
      <div class="form-group">
    <label for="hq">Highest qualification</label>
    <select class="form-control" name="hq" id="hq" required="yes">
      <option>M.A</option>
      <option>M.Sc</option>
      <option>M.Tech</option>
      <option>B.tech</option>
      
      <option>B.Sc</option><option>Others</option>
    </select>
     </div>
        <div class="form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1" required="yes">
          <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
        </div>
  <button type="submit" class="btn btn-primary">Submit</button>
                                           </form></div>
                     </div>
                </div>
               
            </div>
        </main>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
