<%-- 
    Document   : index
    Created on : 09-Jan-2023, 10:38:35 am
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
        
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <div class="container">
                      <h1 class="display-3"><% if(session.getAttribute("name")!=null)
        {
        String user = (String)session.getAttribute("user");
        out.print("hi "+user); %> <a href="logout.jsp" class="btn btn-primary">logout</a><% } %></h1>
            <h3 class="display-3">Online Quizzzz</h3>
            <p>Welcome to the world of Quizzzzzz</p>
            <p>For taking quizzes, in the Online Quizzzzzz  system, all the work is done automatically. </p>
            <p>There will be a timer, which counts the timing remains automatically and there will be the automatic checking of the marks even.</p>
            <p>Positive marks will counted as one whereas negative marks will be deducted for every wrong answer. For negative deduction, ¼ marks will be deducted. Proposed Online Quiz Project system is highly automated and accuracy is guaranteed.</p>
            <a  href="login.jsp" class="btn-outline-light btn-lg"><span class="fa fa-paper-plane fa-spin"></span>Start Quizing...</a>
            
                </div></div></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Take a look at some of the quizes</h5>
    <p class="card-text">Quiz topic 1</p>
    <a href="#" class="btn btn-primary">check out</a>
  </div>
</div>
                </div>
                <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Lets check your knowledge</h5>
    <p class="card-text">Quiz topic 1</p>
    <a href="login.jsp" class="btn btn-primary">Lets get started</a>
  </div>
                    </div>
                </div>
                    <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Be a quiz master</h5>
    <p class="card-text">Create your own quiz</p>
    <a href="login.jsp" class="btn btn-primary">Lets get started</a>
  </div>
</div>
                </div>
                </div>
            </div>
        </div>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
</body>

