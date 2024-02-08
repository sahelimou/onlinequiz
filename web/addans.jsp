<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.qnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add qns,ans to new quiz Page</title>
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
        int uid1=(int)session.getAttribute("uid");
        qnsB qb=(qnsB)request.getAttribute("quiz");
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <div class="container">
                    <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>Ans are added to Qns and quiz (<%=qb.getQid() %>)!!!</p>
           
            
                </div></div></div> 
       <div class="container">
            
                            <div class="row">
                <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">view/Edit quiz</h5>
    <form method="post" action="showq">
        <input type="number" class="form-control" id="uid" name="uid" value="<%=uid %>" hidden="yes">
        <button type="submit" class="btn btn-primary">Lets get started</button>
    </form>
        <!--
    <form method="post" action="showquiz">
  <div class="form-group">
    <label for="Qid">Enter Quiz id</label>
    <input type="number" class="form-control" id="Qid" name="Qid" placeholder="Enter quiz id">
  </div>
   <button type="submit" class="btn btn-primary">Check out</button>
</form>-->
  </div>
</div>
                </div>
                <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">create new quiz</h5>
    
    <a href="newq.jsp" class="btn btn-primary">Lets get started</a>
  </div>
                    </div>
                </div>
               <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Add qns to existing quiz</h5>
    <form method="post" action="addqns">
  <div class="form-group">
    <label for="Qid">Enter Quiz id</label>
    <input type="number" class="form-control" id="Qid" name="Qid" placeholder="Enter quiz id">
  </div>
   <button type="submit" class="btn btn-primary">Add</button>
</form>
   
  </div>
</div>
                </div>  
                
                    </div>
                </div>
                       
              
                
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
