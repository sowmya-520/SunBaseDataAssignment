<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.io.*,java.sql.*" %>

<%
  String fn=request.getParameter("firstname");
  try
  {
	Class.forName("com.mysql.jdbc.Driver");
  	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
  	PreparedStatement st=c1.prepareStatement("delete from customer where firstname like ?");
  	st.setString(1,fn);
  	out.print("success");
  	st.executeUpdate();
  	out.println(fn);
	response.sendRedirect("AdminHome.jsp");
  }
  catch(Exception e)
  {
	  out.print("Error");
  }
%>