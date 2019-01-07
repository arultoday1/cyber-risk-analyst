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
<title>DataCard</title>
</head>
<body>
    <div class="container">
    <div class="col-4"></div>
    <div class="col-4">
<%
 

			String dcuname="";

			String dcuemail="";
			
			String datacardnum="";
			
			String datacardname="";

			String problem="";
			
    
			
			

%>
	
		<table class="table table-bordered">
 <!--  style="margin-top:100px;margin-left:100px ;color:black"--> 
	
	<tr style="background-color:lightcoral">
	
	<th>NAME</th>	
	<th>EMAIL</th>
	<th>DATACARD NUMBER</th>	
	<th>DATACARD NAME</th>	
    <th>PROBLEM</th>
    <th colspan="2"><center>STATUS</center></th> 
    
	</tr>
<% 

Connection con=DbCon.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM mobile.datacard c");

   
ResultSet rs=ps.executeQuery();


while(rs.next())
{
	dcuname=rs.getString(1);
	dcuemail=rs.getString(2);
	datacardnum=rs.getString(3);
	datacardname=rs.getString(4);	
	problem=rs.getString(5);
	
	%>

<tr>
<td><%=dcuname%></td>
<td><%=dcuemail%></td>
<td><%=datacardnum%></td>
<td><%=datacardname%></td>
<td><%=problem%></td>
    <!-- Accept Servlet name:  jspfilename:comment.jsp -->
    <td><a href="ddcomment.jsp?uname=<%=dcuname%>&&umemail=<%=dcuemail%>&&ddum=<%=datacardnum%>&&serv=<%=datacardname%>&&prob=<%=problem%>"><button class="btn btn-success">REQUEST</button></a></td>
    <td><a href="ddcomment.jsp?uname=<%=dcuname%>&&umemail=<%=dcuemail%>&&ddnm=<%=datacardnum%>&&serv=<%=datacardname%>&&prob=<%=problem%>"><button class="btn btn-danger">DELETE</button></a></td>

</tr>
<%}%>
</div>
    <div class="col-4"></div>
    </div>
</body>
</html>