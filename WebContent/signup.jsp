<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! String user; %>
<%
	session=request.getSession(false);
	if(session.getAttribute("name") != null && (session.getAttribute("name").equals("admin")))
	{
		user=(String)session.getAttribute("name");
	}
	else
	{
		request.getRequestDispatcher("index.html").forward(request, response);
	}
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/styles.css">
  <title>Bootstrap</title>
  
</head>
<body>
  <header>
      <div class="jumbotron" style="background-color:darkgray";>
        <div class="container text-center">
        <h2 style="font-size: 50px">Stock Management System</h2>     
        </div>
      </div>
</header>
    
<nav class="navbar navbar-inverse ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="store.jsp">Home</a></li>
        <li><a href="AboutUs.jsp">About Us</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
<!-------------------------------------------------------------------------->
<div style=" padding-left: 350px; padding-right: 350px; " class="jumbotron container">
<form action="controller.jsp?action=adduser" method="post">
    <div class="conatainer">
        <div class="row">
<div class="form-group">
    <div class="col-xs-4">
  <label for="inputName">FirstName</label>
  <input class="form-control" type="text"name="uname" id="inputName" 
    placeholder="Name"  autofocus required>
    </div>
    <div class="col-xs-4">
     <label for="inputName">Last Name</label>
     <input class="form-control" type="text" name="ulname" id="inputName" 
    placeholder="Last Name" required >
</div>
<div class="col-xs-4">
     <label for="inputName">User Name</label>
     <input class="form-control" type="text" name="uuname" id="inputName" 
    placeholder="User Name" required >
</div>
            </div>
        </div>
        </div>
    <br>

    <br>
    <div class="conatainer">
        <div class="row">
<div class="form-group">
    <div class="col-xs-4">
  <label for="inputName">Branch</label>
  <input class="form-control" type="number" name="ubranch" id="inputName" 
    placeholder="Branch"required >
    </div>
    <div class="col-xs-4">
     <label for="inputName">Password</label>
     <input class="form-control" type="password" name="upass" id="inputName" 
    placeholder="Password" required>
</div>
    <div class="col-xs-4">
     <label for="inputName">Confirm Password</label>
     <input class="form-control" type="password" name="ucpass" id="inputName" 
    placeholder="Confirm Password" required>
</div>
            </div>
        </div>
        </div>
    <br>
     
    <br>
     <input class="btn btn-default  "
    type="submit" value="Accept"/>
            
  </form>  
    
<!---------------------------------------------------------------------------->

    </div>
  <div class="container-fluid footer text-center navbar-fixed-bottom" style="background-color:darkgray;">
      <h4 style="height: 40px;" >Stock MAnagement System</h4>  
    </div>

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>