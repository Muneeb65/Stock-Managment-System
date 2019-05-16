<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.util.ArrayList"%>
<%@ page import="entity.*,dao.*" %>

	 <div class="container">
 	<br>
  <h2>Active User: <%=session.getAttribute("name") %></h2>
   <h2>Branch : <%=session.getAttribute("branch") %></h2>
   <%! Product p=new Product(); %>
   <%! ArrayList<Product> L1= new ArrayList<Product>(); %>
   <%	L1=(ArrayList<Product>)request.getAttribute("list");
 
   %>
  <h2>Products</h2>
  <table  style ="background-color:floralwhite" class="table table-hover table-bordered">
    <thead>
      <tr>
        <th>Name</th>
        <th>Category</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Input</th>
        <th>Sell</th>
          
      </tr>
    </thead>
    <tbody>
    <% 
   for(int i=0;i<L1.size();i++)
    {
    	p=(Product)L1.get(i);
    %>
      <tr>
        <td><%=p.getP_NAME() %>></td>
        <td><%=p.getP_CATEGORY() %></td>
        <td><%=p.getP_QTY() %></td>
          <td><%=p.getP_PRICE() %></td>
          <!--  <td><input  size="4" type="number" /></td><td><input  type="submit" value="submit" /></td>-->
      </tr>
      <%} %>
      </tbody>
      </table>
    
    
</div>