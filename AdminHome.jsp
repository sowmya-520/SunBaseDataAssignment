<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@600&family=Nunito:ital,wght@0,400;0,700;1,200&family=Pacifico&display=swap');
         th
         {
                 color:black;
                 background-color:thistle;
                 font-family:'Outfit', sans-serif;
                 font-size:20px;
                 padding:10px;
         }
         td
         {
              color:black;
              background-color:lavender;
              align:center;
              font-family:'Outfit', sans-serif;
              font-size:bolder;
         }
         table
         {
            justify-content:center;
            width:65%;
            color:hotpink;
            bordet-width:2px;
            border-style:groove;
         }
         body
         {
             background:linear-gradient(teal,turquoise,cyan,aquamarine,teal);
         }
         p
         {
            font-size:40px;
            font-family: 'Dancing Script', cursive;
            color:black;
         }
         p:hover
         {
             font-size:50px;
             background-color:black;
             color:white;
         }
    </style>
<%
    try
    {
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	Statement st=c1.createStatement();
    	ResultSet rs=st.executeQuery("select * from customer");
    	out.println("<html><body><center><br><br><p>Customer List</p><br><br> <table border=1>");
    	out.println("<tr><th>update</th><th>del</th><th>firstname</th><th>lastname</th><th>street</th><th>address</th><th>city</th><th>state</th><th>email</th><th>phone</th></tr>");
    	while(rs.next())
    	{
    	out.println("<tr><td><a href=\"Update.jsp?firstname="+rs.getString(1)+"\">update</a>"+"</td><td><a href=\"delete.jsp?firstname="+rs.getString(1)+"\">delete</a>"+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+  "</td></tr>");
    	      
    	}
    	out.println("<form action=\"addCustomers.html\"> <button  type=\"submit\" ><strong>create  customers</strong></button></form><br><br>");
    	out.println("</center></table></body></html>");
    }
    catch(Exception e)
    {}
%>