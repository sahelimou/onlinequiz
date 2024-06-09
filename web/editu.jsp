<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.regB"%>
<%@page import="com.onlinequiz.model.qqnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit quiz settings</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 70%, 73% 73%, 30% 61%, 0% 70%, 0 0);      }
        </style>
      
    </head>
    <body>
        <%@include file="navb_2.jsp" %>
        <% String uid = (String)session.getAttribute("user"); 
        //int uid1=(int)session.getAttribute("uid");
       // qqnsB qqb=(qqnsB)session.getAttribute("qqb");
regB user=(regB)request.getAttribute("user");
int r = user.getRole();
%> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>Edit user details</p>
             </div></div>
        <main  class="d-flex align-items-center" style="height: 75vh">
            <div class="container">
                <div >
                     <div class="card">
                            <div class="card-header pbackground text-white text-center">
                              Edit user details
                            </div>
                                       <div class="card-body">
             <form action="edituser" method="post">                               
     <div class="form-group">
    <label for="qid">user id</label>
    <input type="number" class="form-control" id="uid" name="uid" value="<%=user.getUid() %>"  readonly="yes" required="yes">
     <label for="qid">User name</label>
    <input type="text" class="form-control" id="uname" name="uname" value="<%=user.getUname() %>"  required="yes" >
    
      <div class="card card-body">
        <label for="tot_q">Highest qualification</label>
    <input type="text" class="form-control" id="hq" name="hq" value="<%=user.getHq() %>"  required="yes" >
      </div>
        <div class="card card-body">
        <label for="tot_q">Email</label>
    <input type="text" class="form-control" id="em" name="em"  value= "<%=user.getEm() %>" required="yes" >
      </div>
      <div class="form-group">
    <label for="role">user role</label>
    <select class="form-control" name="role" id="role" required="yes">
        
        <option  value="1">Quiz creator</option>
       
     <option  value="2">participant</option>
    
    </select>
     </div>
      <button type="submit" class="btn btn-primary">edit</button>
     </div>
              </form>
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
