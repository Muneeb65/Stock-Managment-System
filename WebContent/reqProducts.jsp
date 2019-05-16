<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! String user; %>
<%
	session=request.getSession(false);
	if(session.getAttribute("name") != null && !(session.getAttribute("name").equals("admin")))
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
  <title>Stock Management System</title>
  
</head>
<body>
  <header>
      <div class="jumbotron" style="background-color:darkgray";>
        <div class="container text-center">
        <h2 style="font-size: 50px">Stock Management System</h2>     
        </div>
      </div>
</header>
    
<nav class="navbar navbar-inverse">
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
        <li class="active"><a href="branch.jsp">Home</a></li>
        <li class="active"><a href="aboutUs.jsp">About Us</a></li>
        
      </ul>
       <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span>Log out</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>

<!--------------------------------------------------------------------------------->
    <div class="container">
  <h2>Products in Store</h2>

  <table  style ="background-color:floralwhite" class="table table-hover table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Req Quantity</th>
        <th>Request</th>
          
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Laptop</td>
        <td>Electronics</td>
        <td>15</td>
          <td>50000</td>
          <td><input  size="4" type="number" /></td><td><input  type="submit" value="submit" /></td>
      </tr>
     <tr>
        <td>Tablet</td>
        <td>Electronics</td>
        <td>11</td>
          <td>5000</td>
          <td><input  size="4" type="number" /></td><td><input  type="submit" value="submit" /></td>
         
      </tr>
      <tr>
        <td>Phone</td>
        <td>Electronics</td>
        <td>12</td>
          <td>6000</td>
          <td><input  size="4" type="number" /></td><td><input  type="submit" value="submit" /></td>
      </tr>
    </tbody>
  </table>
</div>
<!--------------------------------------------------------------------------------->
  <div class="container-fluid footer text-center navbar-fixed-bottom" style="background-color:darkgray;">
      <h4 style="height: 40px;" >Stock MAnagement System</h4>  
    </div>

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>