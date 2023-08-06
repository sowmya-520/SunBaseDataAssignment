<%@ page        language="java" 
          contentType="text/html; 
          charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.*,java.sql.*" %>
<%
    String firstname=request.getParameter("firstname");
    try
    {
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection c1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wtproject","sowmya","5200");
    	PreparedStatement st=c1.prepareStatement("select * from customer where firstname like ?");
    	st.setString(1,firstname);
    	ResultSet rs=st.executeQuery();  
    	out.print("success");
    
    while(rs.next())
    {
%>

<html >
<head>
  <meta charset="UTF-8">
  <title></title>
<script src="https://kit.fontawesome.com/82f5b66b01.js" crossorigin="anonymous"></script>
  <style>
  
    /* CSS code for button */
    body {
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: cover;
    }

    h1{
        font-size:45;
        color : #050505;
        font-family: 'Dancing Script', cursive;
     
    }

    /* CSS code for button */
     

    #corner {
        border-radius:25px;
        background :linear-gradient(skyblue,lightgreen,skyblue,lightgreen);
        border : 2px solid #0e0d0d;
        padding : 5px;
        width : 500px;
        height: 500px;
        
      }

    #fnt{
        font-size : 23px;
        color : black;
        font-family: 'Dancing Script', cursive;
    }
     #fnt:hover{
        font-size : 30px;
        color : black;
        font-family: 'Dancing Script', cursive;
        
    }

    #box {
        border-radius : 15px;
        border : 2px solid #0e0d0d;
        width : 250px;
        height : 25px;
        font-size : 15px;
        
    }
    #b1{
        border : 2px solid #0e0d0d;
        border-radius :2px;
        width : 100px;
        height : 50px;
        font-size : 15px;
        color :#0e0d0d;
        background :linear-gradient(to bottom,#bfc4c485 0%,#5c5c5c85);
    }

    .login {
       background : linear-gradient(skyblue,lightgreen,skyblue,lightgreen);
       width:100%;
       height:100%; 
    }
    .login img
    {
    border-radius:70%;
    }
    
  </style>

</head>

<body>

 

 <div class="login" align="center">
	
    <center>
         <br>
            <br>
               <br>
                  <br>
    
    <form action="UpdateCustomerdata.jsp">
                                    
 
        <h1 align='center'>Enter customer details Details :  </h1>
        
        <table id="corner">
    	<tr>
            <td align='center' id="fnt">firstname :</td>
            <td><input  id="box" type="text" name="firstname" placeholder="firstname" value=<%=rs.getString("firstname") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt"> lastname :</td>
            <td><input id="box" type="text" name="lastname" placeholder=" lastname"  value=<%=rs.getString("lastname") %>/></td>
        </tr>
        <tr>
            <td align='center' id="fnt">street :</td>
            <td><input id="box" type="text" name="street" placeholder="street" value=<%=rs.getString("street") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt">addr :</td>
            <td><input  id="box" type="text" name="addr" placeholder="addr" value=<%=rs.getString("addr") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt">city :</td>
            <td><input  id="box" type="text" name="city" placeholder="city" value=<%=rs.getString("city") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt">state :</td>
            <td><input  id="box" type="text" name="state" placeholder="state" value=<%=rs.getString("state") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt">email :</td>
            <td><input  id="box" type="text" name="email" placeholder="email" value=<%=rs.getString("email") %> /></td>
        </tr>
        <tr>
            <td align='center' id="fnt">phone :</td>
            <td><input  id="box" type="number" name="phone" placeholder="phone" value=<%=rs.getInt("phone") %>  /></td>
        </tr>
       
    </table>


      
        <br>
        <!-- Show button -->
        <div align="center">
            <button id="b1" type="submit" onclick="addCustomerdata.jsp" ><strong>save</strong></button>
        </div>
        
    </form>
    </center>

</body>
</html>
<% 
}
    }
catch(Exception e)
{
out.print("error");
}
%>