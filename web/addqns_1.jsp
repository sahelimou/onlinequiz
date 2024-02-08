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
        <title>Add qns Page</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 70%, 73% 73%, 30% 61%, 0% 70%, 0 0);      }
        </style>
        <script>
        function yesnoCheck() {
    if (document.getElementById('yesCheck').checked) {
        document.getElementById('ifYes').style.visibility = 'visible';
        document.getElementById('yes').value= "option a.  "+document.getElementById('desc').value;
    }
    else 
    {
        if(document.getElementById('noCheck').checked) {
        document.getElementById('ifYes').style.visibility = 'visible';
        document.getElementById('yes').value="option b.  "+document.getElementById('desc1').value;
        }
        else
           document.getElementById('ifYes').style.visibility = 'hidden'; 
    }
        

}</script><!-- comment -->
    </head>
    <body>
        <%@include file="navb_2.jsp" %>
        <% String user = (String)session.getAttribute("user"); 
        int uid=(int)session.getAttribute("uid");
        int qid=(int)request.getAttribute("qid");
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(user); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>Add qns to the quiz</p>
             </div></div>
        <main  class="d-flex align-items-center" style="height: 75vh">
            <div class="container">
                <div >
                     <div class="card">
                            <div class="card-header pbackground text-white text-center">
                               Enter qns and answer....Click on the correct answer 
                            </div>
                                       <div class="card-body">
                                           <form action="addq" method="post">
     <div class="form-group">
         <input type="number" class="form-control" id="uid" name="uid" value="<%=uid %>"  type="hidden" >
         
    <label for="qid">Quiz id</label>
    <input type="number" class="form-control" id="qid" name="qid" value="<%=qid %>"  readonly="yes" >
  </div>                                           <div class="form-group">
    <label for="qns">question</label>
    <input type="text" class="form-control" id="qns" name="qns"  >
    
    
  </div>
     a. <div class="form-check">
         <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="yesCheck" value="desc" />
  <textarea type="text" class="form-control" id="desc" name="desc"></textarea>
  <br>
  
</div>
b. <div class="form-check">
   <input type="radio" onclick="javascript:yesnoCheck();" name="yesno" id="noCheck" value="desc1"/>
   <textarea type="text" class="form-control" id="desc1" name="desc1"></textarea>
   <br>
  
  
</div>      
<div id="ifYes" style="visibility:hidden">
        correct answer is <input type='text' id='yes' name='yes' readonly ><br>
        
    </div>
     <button type="submit" class="btn btn-primary">Add</button>
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
