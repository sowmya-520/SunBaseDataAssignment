<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
<%
    String firstname=request.getParameter("firstname");
    String lastname=request.getParameter("lastname");
    String street=request.getParameter("street");
    String addr=request.getParameter("addr");
    String city=request.getParameter("city");
    String state=request.getParameter("state");
    String email=request.getParameter("email");
    int phone=Integer.parseInt(request.getParameter("phone"));
    try
    {
    	if(firstname!=""&&lastname!="")
    	{
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	PreparedStatement st=c1.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?)");
    	st.setString(1,firstname);
    	st.setString(2,lastname);
    	st.setString(3,street);
    	st.setString(4,addr);
    	st.setString(5,city);
    	st.setString(6,state);
    	st.setString(7,email);
    	st.setInt(8,phone);
    	st.executeUpdate();
    	out.println("success");
    	response.sendRedirect("AdminHome.jsp");
    	}
    	else
    	{
    		response.sendRedirect("AdminHome.jsp");
    	}
    }
    catch(Exception e)
    {
     	response.sendRedirect("AdminHome.jsp");
}
%>