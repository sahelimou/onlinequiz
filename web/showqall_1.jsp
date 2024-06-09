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
        <title>Quiz details</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value;
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
        function myFunction1() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value;
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
function myFunction2() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput2");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[2];
    if (td) {
      txtValue = td.textContent || td.innerText;
      txtValue=txtValue.toUpperCase();
      if (txtValue.indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
        </script>
        <style>
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 70%, 73% 73%, 30% 61%, 0% 70%, 0 0);      }
            * {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
        </style>
      
    </head>
    <body>
        <%@include file="navb_1.jsp" %>
        <% String uid = (String)session.getAttribute("user"); 
        //int uid1=(int)session.getAttribute("uid");
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
                              View created quiz details
                              <% if(uid.contains("admin"))
        { %>
                               <form method="post" action="delq">
                                  <div class="row">
                                      
    <div class="col">
       
        <label for="Qid">Enter Quiz id</label></div>
                                      <div class="col">
        <input type="number" class="form-control" id="qid" name="qid" placeholder="Enter quiz id"></div>
 <div class="col">
     <button type="submit" class="btn btn-primary">delete</button></div>
                                  </div>
</form>
                               <% } %>
                              
                            </div>
                                       
                                           <input type="number" id="myInput" onkeyup="myFunction()" placeholder="Search for quizes with quizid" title="Type in quizid">
                                            <input type="number" id="myInput1" onkeyup="myFunction1()" placeholder="Search for quizes with creator's id" title="Type in userid">
 <input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Search for quizes with quiz topic" title="Type in quiz topic">
 <div class="card-body p-3 mb-2 bg-info text-white" >
                                           <table id="myTable">
  
    <th style="width:10%;">Quiz id
    
    </th>
    <th style="width:10%;">created by(userid)</th>
    <th style="width:30%;">Quiz Topic</th>
    <th style="width:10%;">Total qns</th>
    <th style="width:10%;">Qns mark</th>
    <th style="width:10%;">Total time</th>
    
    <!-- comment -->  
  
                                        <% for(int i=0;i<quizall.size();i++)
                                               {
                                               quizB qb=(quizB)quizall.get(i);
                                               %>
                                               <tr>
                                           
                                                   <td><%=qb.getQid()%></td>
                                                   <td><%=qb.getCrtby() %></td>
                                                   <td><%=qb.getQtopic() %></td>
                                                   <td><%=qb.getTq() %></td>
                                                   <td><%=qb.getQm() %></td>
                                                   <td><%=qb.getQtm() %></td>
                                               </tr>    
                                                   <%} %>
                                           </table></div>
    </div>
  </div>
  
      
 
   
              
           
        </main>
           
  
        
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
    </body>
    
</html>
