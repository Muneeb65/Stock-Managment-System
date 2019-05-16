<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="entity.*,dao.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>validate User</title>
</head>
<body>
	<%!String action; %>
	<%action=request.getParameter("action");
	if(action.equals("login"))
	{					%>
	<%! String name,pass,option; %>
	<%
	name=request.getParameter("name");
	pass=request.getParameter("pass");
	option=request.getParameter("option");
	if(option==null)
	{
		request.getRequestDispatcher("index.html").forward(request, response);
	}
	SysOperator s=new SysOperator();
	ArrayList<SysOperator> L=new ArrayList<SysOperator>();
	SysOperatorDAO sDao=new SysOperatorDAO();
	L=sDao.get();
	for(int i=0;i<L.size();i++)
	{
		s=(SysOperator)L.get(i);
		if((s.getSYS_OPR_USERNAME().equals(name)) && (s.getSYS_OPR_PASSWORD().equals(pass)))
		{
			if(option.equals("admin"))
			{
				if(s.getB_ID() == 0){
					session=request.getSession(true);
					session.setAttribute("name", s.getSYS_OPR_USERNAME());
					session.setAttribute("branch", s.getB_ID());
					request.getRequestDispatcher("store.jsp").forward(request, response);
				}else{
					request.getRequestDispatcher("index.html").forward(request, response);
				}
			}
			else if(option.equals("salesman"))
			{
				if(s.getB_ID() != 0){
					session=request.getSession(true);
					session.setAttribute("name", s.getSYS_OPR_USERNAME());
					session.setAttribute("branch", s.getB_ID());
					request.getRequestDispatcher("branch.jsp").forward(request, response);
				}
				else
					request.getRequestDispatcher("index.html").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("index.html").forward(request, response);
			}
		}
	}
	request.getRequestDispatcher("index.html").forward(request, response);
	}//END_IF
	else if(action.equals("adduser"))
	{
		String pass,cpass;
		pass=request.getParameter("upass");
		cpass=request.getParameter("ucpass");
		if(pass.equals(cpass))
		{
			SysOperator s=new SysOperator();
			SysOperatorDAO sDao=new SysOperatorDAO();
			s.setSYS_OPR_PASSWORD(pass);
			s.setSYS_OPR_USERNAME(request.getParameter("uuname"));
			s.setB_ID(Integer.parseInt(request.getParameter("ubranch")));
			sDao.insert(s);
		}
		else
			out.print("<h2>Password Miss Matched</h2>");
			request.getRequestDispatcher("signup.jsp").include(request, response);
	}
	else if(action.equals("search"))
	{
		Product prod=new Product();
		//String search=request.getParameter("search");
		int branch=(int)(session.getAttribute("branch"));
		String product=request.getParameter("product");
		String qty=request.getParameter("qty");
		ProductDAO pDao=new ProductDAO();
		ArrayList<Product> l=pDao.search(product, branch);
		prod=(Product)l.get(0);
		if(Integer.parseInt(prod.getP_QTY())>(Integer.parseInt(qty)))
		{
		//request.setAttribute("qty",prod.getP_QTY() );
		int qty1=Integer.parseInt(prod.getP_QTY());
		qty1=qty1-(Integer.parseInt(qty));
		String set="";
		set+=qty1;
		prod.setP_QTY(set);
		pDao.update(prod);
;		Sales sale=new Sales();
		sale.setP_ID(prod.getP_ID());
		sale.setB_ID(prod.getB_ID());
		sale.setS_QTY(qty);
		SalesDAO saleDao=new SalesDAO();
		saleDao.insert(sale);
		request.getRequestDispatcher("branch.jsp").forward(request, response);
		}else
		{
			request.getRequestDispatcher("branch.jsp").forward(request, response);
		}	
	}
	%>
	
	
	
</body>
</html>