<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="entity.*,dao.*,java.util.*,java.sql.*" %>
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

<%! Sales s=new Sales();
	ArrayList<Sales> al=new ArrayList<Sales>();
	int branch;
%>
<% 
	SalesDAO s1Dao= new SalesDAO();
	al=s1Dao.get();
%>
    <div class="container">
  <h2>Sales</h2>
  <table  style ="background-color:floralwhite" class="table table-hover table-bordered">
    <thead>
      <tr>
        <th>Branch</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Date</th>
          
      </tr>
    </thead>
    <tbody>
    <% for(int i=0;i<al.size();i++)
    	{	
    		s=(Sales)al.get(i);
    	%>
      <tr>
        <td><%=s.getB_ID() %></td>
        <td><%=s.getP_ID() %></td>
        <td><%=s.getS_QTY() %></td>
          <td><%=s.getS_DATE() %></td>
     </tr>
     <%} %>
    
    </tbody>
  </table>
</div>
<!--------------------------------------------------------------------------------->
 

<script src="js/jquery-2.1.4.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/script.js"></script>
</body>
    
</html>