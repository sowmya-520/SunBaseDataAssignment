<%
   String user=request.getParameter("username");
   String pass=request.getParameter("password");
   
   if(user.equalsIgnoreCase("test@sunbasedata.com")&& pass.equalsIgnoreCase("Test@123"))
   {
	   response.sendRedirect("AdminHome.jsp");
   }
   else
   {
	    out.print("error");
	  
	   response.sendRedirect("LoginPage.jsp"); 
	   
   }
%>