<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.dbcon.DbCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>



<%@page import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>DTH</title>
</head>
<body>
    <div class="container">
    <div class="col-4"></div>
    <div class="col-4">
<%
 

			String duname="";

			String duemail="";
			
			String service="";
			
			String customerid="";

			String problem="";
			
    
			
			

%>
	
		<table class="table table-bordered">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:darkseagreen" >
	
	<th>NAME</th>	
	<th>EMAIL</th>
	<th>DTH OPERATOR</th>	
	<th>CUSTOMER ID</th>	
    <th>PROBLEM</th>
    <th colspan="2"><center>STATUS</center></th> 
    
	</tr>
<% 

Connection con=DbCon.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM mobile.dth d");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	duname=rs.getString(1);
	duemail=rs.getString(2);
	service=rs.getString(3);
	customerid=rs.getString(4);	
	problem=rs.getString(5);
	
	%>

<tr>
<td><%=duname%></td>
<td><%=duemail%></td>
<td><%=service%></td>
<td><%=customerid%></td>
<td><%=problem%></td>
    <!-- Accept Servlet name:  jspfilename:comment.jsp -->
    <td><a href="dcomment.jsp?uname=<%=duname%>&&umemail=<%=duemail%>&&ser=<%=service%>&&cuid=<%=customerid%>&&prob=<%=problem%>"><button class="btn btn-success">REQUEST</button></a></td>
    <td><a href="dcomment.jsp?uname=<%=duname%>&&umemail=<%=duemail%>&&ser=<%=service%>&&cuid=<%=customerid%>&&prob=<%=problem%>"><button class="btn btn-danger">DELETE</button></a></td>

</tr>

<%}%>
    </div>
    <div class="col-4"></div>
    </div>

</body>
</html>