<%-- 
    Document   : navb
    Created on : 10-Jan-2023, 10:41:06 am
    Author     : User
--%>

<nav class="navbar navbar-expand-lg navbar-dark pbackground">
   

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp"><span class="fa fa-home"></span>Home </a>
      </li>
    
        <li class="nav-item">
            <button id="myBtn4" class="btn btn-primary"><span class="fa fa-space-shuttle"></span>Take a quiz <span class="sr-only">(current)</span></button>
      </li>
      <li class="nav-item">
         
      </li>
      <li class="nav-item">
          <a class="nav-link" href="login.jsp"><span class="fa fa-edit"></span>View existing Quiz</a>
      </li>
      <li class="nav-item">
        
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="fa fa-unlock"></span>Login
        </a>
          
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <button id="myBtn" class="btn btn-primary">user </button> 
          <div class="dropdown-divider"></div>
          <button id="myBtn1" class="btn btn-primary">Admin </button> 
          
          
        </div>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
<div id="myModal" class="modal">

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
<div id="myModal1" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <h1>Admin login</h1>
     <form method="post" action="alogin" >
    <div class="form-group">
    <label for="uid">Admin ID</label>
    <input type="text" class="form-control" name="uid" id="uid" aria-describedby="emailHelp" placeholder="Enter User ID" required="yes">
   
  </div>
  <div class="form-group">
    <label for="pwd">Password</label>
    <input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password" required="yes">
  </div>   
                            <button type="submit" class="btn btn-primary">Login</button>
                                </form>
                                
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById("myModal");
var modal1 = document.getElementById("myModal1");
// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn1 = document.getElementById("myBtn1");
var btn4 = document.getElementById("myBtn4");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var span1 = document.getElementsByClassName("close")[1];
// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
};
btn1.onclick = function() {
  modal1.style.display = "block";
};
btn4.onclick = function() {
  modal.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
};
span1.onclick = function() {
  modal1.style.display = "none";
};
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
  if (event.target == modal1) {
    modal1.style.display = "none";
  }
  };
</script>