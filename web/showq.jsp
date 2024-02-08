<%-- 
    Document   : register
    Created on : 03-Feb-2023, 10:46:26 am
    Author     : User
--%>

<%@page import="com.onlinequiz.model.quizB"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.onlinequiz.model.qqnsB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz settings </title>
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
        ArrayList quizall=(ArrayList)request.getAttribute("quizall");
        /*quizB qb=(quizB)request.getAttribute("qb");
        session.setAttribute("qqb", qb);
        session.setAttribute("qid",qb.getQid());
        session.setAttribute("qtopic",qb.getQtopic());
        session.setAttribute("qtm", qb.getQtm());
        session.setAttribute("qm", qb.getQm());
        session.setAttribute("tq", qb.getTq());
        session.setAttribute("qnsid", qb.getQnsid());
        session.setAttribute("ansid", qb.getAnsid());
        session.setAttribute("qns",qb.getQns());
        session.setAttribute("corrans", qb.getCorrans());
        session.setAttribute("answ", qb.getAnsw());
        
        int qnsids[]=qb.getQnsids();*/
        %> 
         <div class="container-fluid p-0 m-0">
            <div class="jumbotron pbackground text-white">
                <h1 class="display-3">Hi <% out.print(uid); %> <a href="logout.jsp" class="btn btn-primary">logout</a></h1>
            <p>View Quiz ....</p>
             </div></div>
        <main  class="align-items-center" style="height: 75vh">
            <div class="container">
                       <div class="card">
                            <div class="card-header pbackground text-white text-center">
                              View/Edit created quiz details
                              <form method="post" action="showquiz">
                                  <div class="row">
    <div class="col">
        <label for="Qid">Enter Quiz id</label></div>
                                      <div class="col">
        <input type="number" class="form-control" id="Qid" name="Qid" placeholder="Enter quiz id"></div>
 <div class="col">
     <button type="submit" class="btn btn-primary">Edit</button></div>
                                  </div>
</form>
                            </div>
                                       <div class="card-body p-3 mb-2 bg-info text-white" >
                                        <% for(int i=0;i<quizall.size();i++)
                                               {
                                               quizB qb=(quizB)quizall.get(i);
                                               %>
                                               <div class="row">
                                                   <div class="col">
        <label for="qid">Quiz id</label>
        <input type="number" class="form-control" id="qid" name="qid" value="<%=qb.getQid() %>"  readonly="yes" ></div>
        <div class="col">
     <label for="qid">Quiz Topic</label>
    <input type="text" class="form-control" id="quiz" name="quiz" value="<%=qb.getQtopic() %>"  readonly="yes" >
        </div>
      <div class="col">  
     <label for="qid">Total qns</label>
     <input type="text" class="form-control" id="tot_q" name="tot_q" value="<%=qb.getTq() %>"  readonly="yes" ></div>
     <div class="col">
     <label for="qid">Qns mark</label>
     <input type="text" class="form-control" id="q_mark" name="q_mark" value="<%=qb.getQm() %>"  readonly="yes" ></div>
     <div class="col">
     <label for="qid">Total time</label>
     <input type="text" class="form-control" id="tot_tm" name="tot_tm" value="<%=qb.getQtm() %>"  readonly="yes" ></div>
                                               </div>
    <%} %>
    </div>
  </div>
  </div>
      
 
   
              
           
        </main>
           
  
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
