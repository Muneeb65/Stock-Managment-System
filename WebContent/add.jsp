<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="entity.*,dao.*" %>
<%! String user; %>
<%
	session=request.getSession(false);
	if(session.getAttribute("name") != null && (session.getAttribute("name").equals("admin")))
	{
		user=(String)session.getAttribute("name");
		out.println(user);
	}
	else
	{
		request.getRequestDispatcher("index.html").forward(request, response);
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Product p=new Product();
		p.setB_ID(Integer.parseInt(request.getParameter("pbranch")));
		p.setP_CATEGORY(request.getParameter("pcat"));
		p.setP_NAME(request.getParameter("pname"));
		p.setP_PRICE(request.getParameter("pprice"));
		p.setP_QTY(request.getParameter("pqty"));
		ProductDAO pDao=new ProductDAO();
		pDao.insert(p);
		request.getRequestDispatcher("addProduct.jsp").forward(request, response);
	%>
</body>
</html>