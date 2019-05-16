<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<%@ page import="entity.*,dao.*,java.util.*" %>
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
  <title>Branch Data</title>
  
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
      <a class="navbar-brand" href="#"><image height="30px"; src="images/logo1.jpg"></image></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="branch.jsp">Home</a></li>
        
        <li class="active"><a href="reqProducts.jsp">Send Request</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span>Log out</a></li>
        
      </ul>
    </div>
  </div>
</nav>
<form method="post" action="controller.jsp?action=search">
<div class="form-group">
<div class="col-xs-7"></div>
    <div class="col-xs-2">
  <input class="form-control" type="text" name="product" id="inputName" 
    placeholder="Product Name"   >
    </div>
    <div class="col-xs-2">
  <input class="form-control" type="number" name="qty" id="inputName" 
    placeholder="Quantity"   >
    </div>
     <div class="col-xs-1">
    <input class="form-control" type ="submit" value="Search"  name="sell">
    </div>
    
    </div>
</form>
<!--------------------------------------------------------------------------------->
<div class="container">
 <br>
  <h2>Active User: <%=session.getAttribute("name") %></h2>
   <h2>Branch : <%=session.getAttribute("branch") %></h2>
  <h2>Products</h2>
  <%!
  	Product p1=new Product();
    ArrayList<Product> l1 =new ArrayList<Product>();
  %>
  <%
    ProductDAO pdao1=new ProductDAO();
  	int branch=(int)session.getAttribute("branch");
  	
  	l1=pdao1.get(branch);
  %>
  <table  style ="background-color:floralwhite" class="table table-hover table-bordered">
    <thead>
    
      <tr>
        <th>Name</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
          
      </tr>
    </thead>
    <tbody>
    <%for(int i=0;i < l1.size();i++)
    	{
    		p1=(Product)l1.get(i);%>
      <tr>
        <td><%=p1.getP_NAME() %></td>
        <td><%=p1.getP_CATEGORY() %></td>
        <td><%=p1.getP_QTY() %></td>
        <td><%=p1.getP_PRICE() %></td>
      </tr>
      <%}//END_FOR %>
     
    </tbody>
  </table>
</div>
<!--------------------------------------------------------------------------------->

 <!-- <div class="container-fluid footer text-center navbar-fixed-bottom" style="background-color:darkgray;">
      <h4 style="height: 40px;" >Stock MAnagement System</h4>  
    </div> --> 

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>