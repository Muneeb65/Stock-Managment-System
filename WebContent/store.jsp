<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.util.ArrayList"%>
<%@ page import="entity.*,dao.*,java.util.*" %>
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

<!--------------------------------------------------------------------------------->
    <div class="container">
  <h2>Store</h2>
  <h2>Products</h2>
 <%!
  	Product p1=new Product();
    ArrayList<Product> l1 =new ArrayList<Product>();
  %>
  <%
    ProductDAO pdao1=new ProductDAO();
  	int branch=(int)session.getAttribute("branch");
  	
  	l1=pdao1.retrieve();
  %>
  <table  style ="background-color:floralwhite" class="table table-hover table-bordered">
    <thead>
    
      <tr>
        <th>Name</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Branch</th>
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
        <td><%=p1.getB_ID() %></td>
      </tr>
      <%}//END_FOR %>
     
    </tbody>
  </table>
</div>
<!--------------------------------------------------------------------------------->
  

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>