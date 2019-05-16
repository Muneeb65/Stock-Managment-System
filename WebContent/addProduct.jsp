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
  <title>Store</title>
  
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
        
          <li class="active"><a href="request.jsp">Requests <span class="badge badge-light">4</span></a> </li>
          <li class="active"><a href="addProduct.jsp">Add Products</a></li>
          <li class="active"><a href="signup.jsp">Add Branch User</a></li>
          <li class="active"><a href="sales.jsp">Sales</a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span>Log out</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
<div style=" padding-left: 350px; padding-right: 350px; " class="jumbotron container";>
<form method="post" action="add.jsp">
    <div class="conatainer">
        <div class="row">
<div class="form-group">
    
    <div class="col-xs-6">
     <label for="inputName">NAME</label>
     <input class="form-control" type="text" name="pname" id="inputName" 
    placeholder="Name" required >
</div>
    <div class="col-xs-6">
     <label for="inputName">CATEGORY</label>
     <input class="form-control" type="text" name="pcat" id="inputName" 
    placeholder="Category" required >
</div>
            </div>
        </div>
        </div>
    <br>
<div class="conatainer">
        <div class="row">
<div class="form-group">
    <div class="col-xs-4">
  <label for="inputName">BRANCH</label>
  <input class="form-control" type="text" name="pbranch" id="inputName" 
    placeholder="Branch"required >
    </div>
    <div class="col-xs-4">
     <label for="inputName">PRICE</label>
     <input class="form-control" type="number" name="pprice" id="inputName" 
    placeholder="Price"  required>
</div>
    <div class="col-xs-4">
     <label for="inputName">QUANTITY</label>
     <input class="form-control" type="number" name="pqty" id="inputName" 
    placeholder="Quantity"  required>
</div>
            </div>
        </div>
        </div>
    <br>
   
    <br>
     <input class="btn btn-default  "
    type="submit" value="Accept"/>
            </form>
    </div>
  <div class="container-fluid footer text-center navbar-fixed-bottom" style="background-color:darkgray;">
      <h4 style="height: 40px;" >Stock MAnagement System</h4>  
    </div>

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>
    