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
        //int uid1=(int)session.getAttribute("uid");
        quizB qb=(quizB)request.getAttribute("qb");
        //session.setAttribute("qqb", qb);
        session.setAttribute("qid",qb.getQid());
        session.setAttribute("qtopic",qb.getQtopic());
        session.setAttribute("qtm", qb.getQtm());
        session.setAttribute("qm", qb.getQm());
        session.setAttribute("tq", qb.getTq());
        int qid=(int) session.getAttribute("qid");
        String qtopic=(String)session.getAttribute("qtopic");
               int qtm=(int) session.getAttribute("qtm");
       int qm=(int) session.getAttribute("qm");
       int tq=(int) session.getAttribute("tq");
       
       //int status=(int)request.getAttribute("status");

        /*session.setAttribute("qnsid", qb.getQnsid());
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
        <main  class="d-flex align-items-center" style="height: 50vh">
            <div class="container">
                       <div class="card">
                            <div class="card-header pbackground text-white text-center">
                              View/Edit quiz details
                            </div>
                                       <div class="card-body">
                                          
     <div class="form-group">
    <label for="qid">Quiz id</label>
     <input type="number" class="form-control" id="qid" name="qid" value="<%=qid %>"  readonly="yes" >
     <label for="qid">Quiz Topic</label>
    <input type="text" class="form-control" id="quiz" name="quiz" value="<%=qtopic %>"   >
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
 View/Edit quiz settings
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="editq" method="post" id="showup">    
            <input type="hidden" class="form-control" id="qid" name="qid" value="<%=qid %>"  >
            <div class="card card-body">
            <label for="qid">Quiz Topic</label>
    <input type="text" class="form-control" id="quiz" name="quiz" value="<%=qtopic %>"   >
            </div>
      <div class="card card-body">
        <label for="tot_q">No. of questions</label>
    <input type="number" class="form-control" id="tot_q" name="tot_q" value="<%=tq %>"   readonly="yes">
      </div>
      <div class="card card-body">
        <label for="tot_q">no. of question to add</label>
    <input type="number" class="form-control" id="new_q" name="new_q"    >
    
      </div>
      <div class="card card-body">
        <label for="q_mark">Questions marks</label>
    <input type="number" class="form-control" id="q_mark" name="q_mark" value="<%=qm %>"  >
      </div>
      <div class="card card-body">
        <label for="tot_tm">Total time</label>
   <input type="number" class="form-control" id="tot_tm" name="tot_tm" value="<%=qtm %>"  >
      </div>
      <div class="card card-body">
        <label for="dt">Created on</label>
    <input class="form-control" id="dt" name="dt" value="<%=qb.getDt() %>" readonly="yes"  >
      </div>
    <button type="button" class="btn btn-primary" onclick="form_submit()" >Save changes</button>
        </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
   <!--
       <form action="addqns" method="post">  
       <input type="hidden" class="form-control" id="Qid" name="Qid" value="<%=qb.getQid() %>"  >
          <p>
              
              <button type="submit" class="btn btn-primary" id="addnewq" >Add the new question with answer</button>
               
  </p>
      </form>-->
      <form action="showqns" method="post">  
       <input type="hidden" class="form-control" id="qid" name="qid" value="<%=qb.getQid() %>"  >
          <p>
   <button type="submit" class="btn btn-primary">view/edit questions</button>
  </p>
      </form>
  </div>  
   </div>
                </div>
            </div>
        </main>
           
          <script>
             function form_submit() {
                 if(document.getElementById("new_q")>0)
                 {
                     document.getElementById("addnewq").disabled="false";
                 }
    document.getElementById("showup").submit();
   } 
</script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
