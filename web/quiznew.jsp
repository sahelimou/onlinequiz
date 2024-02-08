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
        <title>quiz Page</title>
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
        <main  class="align-items-center" style="height: 90vh">
            <div class="container">
                       <div class="card">
                            <div class="card-header pbackground text-white text-center">
                             Take a quiz
                            </div>
                                       <div class="card-body">
                                             
                                                 <form id="regForm" action="">   
                                           <%/* for(int i=0;i<qnsall.size();i++)
                                               {*/
                                               
                                               %>
                                            
  
  <!-- One "tab" for each step in the form: -->
  <% int s=qnsall.size(),i=0;
  while(i<s)
  { qnsB qb=(qnsB)qnsall.get(0);%>
  <div class="tab">Question
      <h1>Qns No.<%=i+1 %></h1>
    <p><input oninput="this.className = ''" id="qnsid" name="qnsid" value="<%=qb.getQnsid()  %>"  readonly="yes" hidden ></p>
    <p><input oninput="this.className = ''" id="no" name="no" value="<%=i  %>"  readonly="yes" hidden ></p>
    
    <p><input oninput="this.className = ''" id="qns" name="qns" value="<%=qb.getQns() %>"></p>
    <label for="ans">Answer</label>
        <p><input oninput="this.className = ''" id="ansid" name="ansid" value="<%=qb.getAnsid() %>"  readonly="yes" hidden ></p>
        <p><input oninput="this.className = ''" type="radio" name="ans" id="corrans" value="1" >
<label for="ans">Answer1</label>
<input type="text" oninput="this.className = ''"  id="corrans" name="corrans" value="<%=qb.getCorrans() %>" >
<p><input oninput="this.className = ''" type="radio" name="ans" id="answ" value="0" >
<label for="ans">Answer2</label>
<input type="text" oninput="this.className = ''"  id="answ" name="answ" value="<%=qb.getAnsw() %>" >
  </div>
  <div class="tab">Contact Info:
  <p><input placeholder="E-mail..." oninput="this.className = ''"></p>
  <p><input placeholder="Phone..." oninput="this.className = ''"></p>
</div>

<div class="tab">Birthday:
  <p><input placeholder="dd" oninput="this.className = ''"></p>
  <p><input placeholder="mm" oninput="this.className = ''"></p>
  <p><input placeholder="yyyy" oninput="this.className = ''"></p>
</div>

<div class="tab">Login Info:
  <p><input placeholder="Username..." oninput="this.className = ''"></p>
  <p><input placeholder="Password..." oninput="this.className = ''"></p>
</div>                                            
                                  
    <% i++;} %>
    <% /*request.setAttribute("obj", qnsnew);
    RequestDispatcher rd = request.getRequestDispatcher("chkqns");
  rd.forward(request, response);*/ %>
                              <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div> </div>
                               <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>
                                       </div>                                    
  </div>   </div></div>                               
                          
                   </main>
           
  <script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
 
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
