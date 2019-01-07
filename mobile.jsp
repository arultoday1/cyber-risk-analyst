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
<title>Mobile</title>
</head>
<body>
    <div class="container">
    <div class="col-4"></div>
    <div class="col-4">
<%
 

			String umname="";

			String umemail="";
			
			String simtype="";
			
			String mboilenu="";

			String simname="";
			
			String circle="";
    
			String problem="";
    
			

			

%>
	
		<table class="table table-bordered">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:orange" >
	
	<th>NAME</th>	
	<th>EMAIL</th>
	<th>SIM TYPE</th>	
	<th>MOBILE NUMBER</th>
	<th>SIM NAME</th>
	<th>CIRCLE</th>
    <th>PROBLEM</th>
    <th colspan="2"><center>STATUS</center></th>     
    
	</tr>
<% 

Connection con=DbCon.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM mobile.mobile m ");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	umname=rs.getString(1);
	umemail=rs.getString(2);
	simtype=rs.getString(3);
	mboilenu=rs.getString(4);
	simname=rs.getString(5);
	circle=rs.getString(6);
	problem=rs.getString(7);
	
	%>
<tr>
<td><%=umname%></td>
<td><%=umemail%></td>
<td><%=simtype%></td>
<td><%=mboilenu%></td>
<td><%=simname%></td>
<td><%=circle%></td>
<td><%=problem%></td>
<!-- Accept Servlet name:  jspfilename:comment.jsp -->
    <td><a href="comment.jsp?uname=<%=umname%>&&umemail=<%=umemail%>&&simtype=<%=simtype%>&&mobile=<%=mboilenu%>&&simn=<%=simname%>&&area=<%=circle%>&&prob=<%=problem%>"><button class="btn btn-success">REQUEST</button></a></td>
    <td><a href="comment.jsp?uname=<%=umname%>&&umemail=<%=umemail%>&&simtype=<%=simtype%>&&mobile=<%=mboilenu%>&&simn=<%=simname%>&&area=<%=circle%>&&prob=<%=problem%>"><button class="btn btn-danger">DELETE</button></a></td>
	  

</tr>
   
<%}%>

   
    </div>
     <div class="col-4"></div>
</body>
</html>
