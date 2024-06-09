<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.qnsB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlinequiz.model.qqnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View qns Page</title>
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
        ArrayList qnsall=(ArrayList)request.getAttribute("qnsall");
        /*qnsB qb=(qnsB)request.getAttribute("qb");
        //session.setAttribute("qqb", qb);
        session.setAttribute("qid",qb.getQid());
        session.setAttribute("qtopic",qb.getQtopic());
        session.setAttribute("qtm", qb.getQtm());
        session.setAttribute("qm", qb.getQm());
        session.setAttribute("tq", qb.getTq());
        session.setAttribute("qnsid", qb.getQnsid());
        session.setAttribute("ansid", qb.getAnsid());
        session.setAttribute("qns",qb.getQns());
        session.setAttribute("corrans", qb.getCorrans());
        session.setAttribute("answ", qb.getAnsw());*/
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>View Quiz ....</p>
             </div></div>
        <main  class="align-items-center" style="height: 90vh">
            <div class="container">
                       <div class="card">
                            <div class="card-header pbackground text-white text-center">
                              View Questions
                            </div>
                                       <div class="card-body">
                                            
                                           <% for(int i=0;i<qnsall.size();i++)
                                               {
                                               qnsB qb=(qnsB)qnsall.get(i);
                                               %>
                                               <div>                                                             
    <label for="qid">Qns No.<%=i+1 %></label>
   
    </div>
    
    <div>
         <form method="post" action="editqns">  
    <input type="number" class="form-control" id="qnsid" name="qnsid" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns" name="qns" value="<%=qb.getQns() %>"  >
           
    <input type="number" class="form-control" id="ansid" name="ansid" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      
        <label for="corrans">Correct Answer</label>
    <input type="text" class="form-control" id="corrans" name="corrans" value="<%=qb.getCorrans() %>" >
     
        <label for="answ">Alternate Answer</label>
    <input type="text" class="form-control" id="answ" name="answ" value="<%=qb.getAnsw() %>" >
          <button type="submit" class="btn btn-primary">Edit qns</button>                                    
         </form></div> <%} %>
  </div>   </div></div>                               
                          
                   </main>
           
  
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
