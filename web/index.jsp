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
            body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
 
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
    <button id="myBtn5" class="btn btn-info btn-lg" >check out</button>
  </div>
</div>
                </div>
                <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Lets check your knowledge</h5>
    <button id="myBtn2" class="btn btn-info btn-lg" >Lets get started </button>
  </div>
                    </div>
                </div>
                    <div class="col-md-4">
                    <div class="card">
  
  <div class="card-body">
    <h5 class="card-title">Be a quiz master</h5>
    <p class="card-text">Create your own quiz</p>
    <button id="myBtn3" class="btn btn-info btn-lg">Lets get started</button>
  </div>
</div>
                </div>
                </div>
            </div>
            <div id="myModal2" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <h1>User Login</h1>
    <form action="ulogin" method="post">
  <div class="form-group">
    <label for="uid">User ID</label>
    <input type="text" class="form-control" name="uid" id="uid" aria-describedby="emailHelp" placeholder="Enter User ID" required="yes">
   
  </div><div class="form-group">
    <label for="uname">user name</label>
    <input type="text" class="form-control" name="uname" id="uname" placeholder="user name" required="yes">
  </div>
                                    
  <div class="form-group">
    <label for="pwd">Password</label>
    <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password" required="yes">
  </div>
 
  <button type="submit" class="btn btn-primary">Login</button>
</form>
                                  
                                New user <a href="register.jsp"><span class="fa fa-user-plus"></span></a>
  </div>

</div>
             <div id="myModal4" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <h1>Sample quizes</h1>
     <div class="container">
         <div class="row pb-3">
                <!-- frist Row-->
                <div class="col-lg-3 mb-3">
                    <div class="card text-center" data-aos="fade-right" data-aos-duration="2000">
                        <div class="card-body">
                            <div class="circle">
                               
                            </div>
                            <br>
                            <img src="img/javap.jpg" alt="image1" height="100" width="100">
                            <h6 class="font-weight-bold pb-2">Java Quiz with certfication</h6>
                            <p>
                              <img src="img/images.jpg" height="70" width="70"> 
                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mb-3">
                    <div class="card text-center" data-aos="fade-up" data-aos-duration="2000">
                        <div class="card-body">
                            <div class="circle">
                                
                            </div>
                            <br>
                            <img src="img/python.png" alt="image1" height="100" width="100">
                            <h6 class="font-weight-bold pb-2">Python Quiz with certification</h6>
                            <p>
                              <img src="img/images.jpg" height="70" width="70">  
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 mb-3">
                    <div class="card text-center" data-aos="fade-left" data-aos-duration="2000">
                        <div class="card-body">
                            <div class="circle">
         
                            </div>
                            <br>
                            <img src="img/dsa.jpg" alt="image1" height="100" width="100">
                            <h6 class="font-weight-bold pb-2">DSA Quiz with certification</h6>
                            <p>
                            <img src="img/images.jpg" height="70" width="70">         
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 mb-3">
                    <div class="card text-center" data-aos="fade-left" data-aos-duration="2000">
                        <div class="card-body">
                            <div class="circle">
                               
                            </div>
                            <br>
                            <img src="img/ccp.jpg" alt="image1" height="100" width="100">
                            <h6 class="font-weight-bold pb-2">C/C++ Quiz with certification </h6>
                            <p>
                           <img src="img/images.jpg" height="70" width="70">         
                            </p>
                        </div>
                    </div>
                </div>
                 
            </div>
            <!--End of frist Row-->

         
  
  </div>
</div>
                </div>
               
               
                                  
                                
  

     
            <script>
// Get the modal
var modal2 = document.getElementById("myModal2");
var modal4 = document.getElementById("myModal4");
//var modal1 = document.getElementById("myModal1");
// Get the button that opens the modal
var btn2 = document.getElementById("myBtn2");
var btn3 = document.getElementById("myBtn3");
var btn5 = document.getElementById("myBtn5");
// Get the <span> element that closes the modal
var span2 = document.getElementsByClassName("close")[2];
var span4 = document.getElementsByClassName("close")[3];
// When the user clicks the button, open the modal 
btn2.onclick = function() {
  modal2.style.display = "block";
};
btn3.onclick = function() {
  modal2.style.display = "block";
};
btn5.onclick = function() {
  modal4.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span2.onclick = function() {
  modal2.style.display = "none";
};
span4.onclick = function() {
  modal4.style.display = "none";
};
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
  if (event.target == modal4) {
    modal4.style.display = "none";
  }
  
};
</script>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
		
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
</body>

