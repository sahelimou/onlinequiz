<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.qqnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Qns Ans</title>
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
       // qqnsB qqb=(qqnsB)session.getAttribute("qqb");
       int qid=(int) session.getAttribute("qid");
        /*String qtopic=(String)session.getAttribute("qtopic");
               int qtm=(int) session.getAttribute("qtm");
       int qm=(int) session.getAttribute("qm");
       int tq=(int) session.getAttribute("tq");*/
       int qnsid=(int) session.getAttribute("qnsid");
       int ansid=(int) session.getAttribute("ansid");
       String qns=(String) session.getAttribute("qns");
       String corrans=(String) session.getAttribute("corrans");
        String answ=(String) session.getAttribute("answ");
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>View Quiz ....</p>
             </div></div>
        <main  class="d-flex align-items-center" style="height: 75vh">
            <div class="container">
                <div >
                     <div class="card">
                            <div class="card-header pbackground text-white text-center">
                              Edit quiz Qns & Ans
                            </div>
                                       <div class="card-body">
             <form action="editqns" method="post">                               
     <div class="form-group">
    <label for="qnsid">Qns id</label>
    <input type="number" class="form-control" id="qnsid" name="qnsid" value="<%=qnsid %>"  readonly="yes" >
     <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns" name="qns" value="<%=qns %>"   >
    <div class="card card-body" hidden>
       
    <input type="number" class="form-control" id="ansid" name="ansid" value="<%=ansid %>"   >
      </div>
      <div class="card card-body">
        <label for="corrans">Correct Answer</label>
    <input type="text" class="form-control" id="corrans" name="corrans" value="<%=corrans %>"   >
      </div>
      <div class="card card-body">
        <label for="ans">Alternate Answer</label>
    <input type="text" class="form-control" id="answ" name="answ" value="<%=answ %>"  >
      </div>
        
    </div><button type="submit" class="btn btn-primary">edit</button>
      
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
