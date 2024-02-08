<%-- 
    Document   : navb
    Created on : 10-Jan-2023, 10:41:06 am
    Author     : User
--%>

<nav class="navbar navbar-expand-lg navbar-dark pbackground">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-home"></span>Home</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link" href="login.jsp"><span class="fa fa-space-shuttle"></span>Take a quiz <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="login.jsp"><span class="fa fa-edit"></span>Create a quiz</a>
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
          <a class="dropdown-item" href="login.jsp">user</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="login1.jsp">Admin</a>
          
          
        </div>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>