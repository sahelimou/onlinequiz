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
      <script language="javascript">
var Timer;
var TotalSeconds;

function CreateTimer(TimerID, Time) 
{
    Timer = document.getElementById(TimerID);
    TotalSeconds = Time*60;
    UpdateTimer();
    window.setTimeout("Tick()", 1000);
}

function Tick() 
{
    TotalSeconds -= 1;
    if(TotalSeconds ==-1)
      {
    alert("Time Up");
    top.document.location.replace('udashboard_2.jsp');
    // Show alert Plus redirect any other page
      }
   else
     {
    UpdateTimer();
    window.setTimeout("Tick()", 1000);
     }
}

function UpdateTimer() {
    Timer.innerHTML = "time remaining:"+TotalSeconds;
}
</script>
    </head>
    <body>
        <%@include file="navb_1.jsp" %>
        <% String uid = (String)session.getAttribute("user"); 
        int uid1=(int)session.getAttribute("uid");
        ArrayList qnsall=(ArrayList)request.getAttribute("qnsall");
        ArrayList<qnsB> qnsnew=new ArrayList<>();
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
        <main  class="align-items-center" style="height: 100vh">
            <div class="container">
                       <div class="card">
                            <div class="card-header pbackground text-white text-center">
                             Take a quiz
                            </div>
                                       <div class="card-body">
                                           <form method="post" action="calc">
                                          <% int i=0;
                                           if(i<qnsall.size())
                                           {
                                           qnsB qb=(qnsB)qnsall.get(i);
                                           int t=qb.getTm();  %>
      <div id='timer' >
<script type="text/javascript">window.onload = CreateTimer("timer", <%=t %>);</script>
                                           </div>                                       
                                        
                                           <div>
     
    <input type="number" class="form-control" id="qnsid1" name="qnsid1" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
    <input type="number" class="form-control" id="mark" name="mark" value="<%=qb.getQmark()  %>"  readonly="yes" hidden ><!-- comment -->
    <input type="number" class="form-control" id="qid" name="qid" value="<%=qb.getQid()  %>"  readonly="yes" hidden >
    <input type="number" class="form-control" id="tq" name="tq" value="<%=qnsall.size()  %>"  readonly="yes" hidden >
    <input type="number" class="form-control" id="uid" name="uid" value="<%=uid1  %>"  readonly="yes" hidden >
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns1" name="qns1" value="<%=qb.getQns() %>" readonly="yes" >
           
    <input type="number" class="form-control" id="ansid1" name="ansid1" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      <div class="form-check">
  <input class="form-check-input" type="radio" name="ans1" id="corrans1" value="1" >
 
        <label class="form-check-label" for="corrans">Answer1
    <input type="text" class="form-control" id="corrans1" name="corrans1" value="<%=qb.getCorrans() %>" readonly="yes">
        </label></div>
       <div class="form-check">
  <input class="form-check-input" type="radio" name="ans1" id="answ1" value="0" >
        <label class="form-check-label" for="answ">Answer2
    <input type="text" class="form-control" id="answ1" name="answ1" value="<%=qb.getAnsw() %>" readonly="yes">
        </label></div>
    
                                          <%i++;}%>
                                          </div> 
                                         <%  if(i<qnsall.size())
                                           {
                                           qnsB qb=(qnsB)qnsall.get(i);%>
                                           <div>
     
    <input type="number" class="form-control" id="qnsid2" name="qnsid2" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
    
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns2" name="qns2" value="<%=qb.getQns() %>" readonly="yes" >
           
    <input type="number" class="form-control" id="ansid2" name="ansid2" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      <div class="form-check">
  <input class="form-check-input" type="radio" name="ans2" id="corrans2" value="1" >
 
        <label class="form-check-label" for="corrans2">Answer1
    <input type="text" class="form-control" id="corrans2" name="corrans2" value="<%=qb.getCorrans() %>" readonly="yes" >
        </label></div>
       <div class="form-check">
  <input class="form-check-input" type="radio" name="ans2" id="answ2" value="0" >
        <label class="form-check-label" for="answ">Answer2
    <input type="text" class="form-control" id="answ2" name="answ2" value="<%=qb.getAnsw() %>" readonly="yes">
        </label></div>
    
                                          <%i++;}%>
                                          </div> 
                                          <% if(i<qnsall.size())
                                           {
                                           qnsB qb=(qnsB)qnsall.get(i);%>
                                           <div>
     
    <input type="number" class="form-control" id="qnsid3" name="qnsid3" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
    
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns3" name="qns3" value="<%=qb.getQns() %>"  readonly="yes">
           
    <input type="number" class="form-control" id="ansid3" name="ansid3" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      <div class="form-check">
  <input class="form-check-input" type="radio" name="ans3" id="corrans3" value="1" >
 
        <label class="form-check-label" for="corrans">Answer1
    <input type="text" class="form-control" id="corrans3" name="corrans3" value="<%=qb.getCorrans() %>" readonly="yes">
        </label></div>
       <div class="form-check">
  <input class="form-check-input" type="radio" name="ans3" id="answ3" value="0" >
        <label class="form-check-label" for="answ">Answer2
    <input type="text" class="form-control" id="answ3" name="answ3" value="<%=qb.getAnsw() %>" readonly="yes">
        </label></div>
                                           </div>
                                          <%i++;}%>
                                         <%  if(i<qnsall.size())
                                           {
                                           qnsB qb=(qnsB)qnsall.get(i);%>
                                           <div>
     
    <input type="number" class="form-control" id="qnsid4" name="qnsid4" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
    
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns4" name="qns4" value="<%=qb.getQns() %>"  readonly="yes">
           
    <input type="number" class="form-control" id="ansid4" name="ansid4" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      <div class="form-check">
  <input class="form-check-input" type="radio" name="ans4" id="corrans4" value="1" >
 
        <label class="form-check-label" for="corrans">Answer1
    <input type="text" class="form-control" id="corrans4" name="corrans4" value="<%=qb.getCorrans() %>" readonly="yes">
        </label></div>
       <div class="form-check">
  <input class="form-check-input" type="radio" name="ans4" id="answ4" value="0" >
        <label class="form-check-label" for="answ">Answer2
    <input type="text" class="form-control" id="answ4" name="answ4" value="<%=qb.getAnsw() %>" readonly="yes">
        </label></div>
    
                                          <%i++;}%>
                                          </div> 

<%  if(i<qnsall.size())
                                           {
                                           qnsB qb=(qnsB)qnsall.get(i);%>
                                           <div>
     
    <input type="number" class="form-control" id="qnsid5" name="qnsid5" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden >
    
      <label for="qns">Question</label>
    <input type="text" class="form-control" id="qns5" name="qns5" value="<%=qb.getQns() %>"  readonly="yes">
           
    <input type="number" class="form-control" id="ansid5" name="ansid5" value="<%=qb.getAnsid() %>"  readonly="yes" hidden>
     
      <div class="form-check">
  <input class="form-check-input" type="radio" name="ans5" id="corrans5" value="1" >
 
        <label class="form-check-label" for="corrans">Answer1
    <input type="text" class="form-control" id="corrans5" name="corrans5" value="<%=qb.getCorrans() %>"  readonly="yes">
        </label></div>
       <div class="form-check">
  <input class="form-check-input" type="radio" name="ans5" id="answ5" value="0" >
        <label class="form-check-label" for="answ">Answer2
    <input type="text" class="form-control" id="answ5" name="answ5" value="<%=qb.getAnsw() %>"  readonly="yes">
        </label></div>
    
                                          <%i++;}%>
                                          </div> 
 


                                           <% /*for(int i=0;i<qnsall.size();i++)
                                               {
                                               qnsB qb=(qnsB)qnsall.get(i);*/
                                               %>
                                              
    <% /*request.setAttribute("obj", qnsnew);
    RequestDispatcher rd = request.getRequestDispatcher("chkqns");
  rd.forward(request, response);*/ %>
                                   <button type="submit" class="btn btn-primary">submit</button>       
                                </form><!-- comment -->
                                  
            </div>
                       </div>
            </div>
                   </main>
           
  
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
