<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
    
    
    <%@page import="com.dbcon.DbCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*" %>


<%@page import="java.sql.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/style1.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>Message</title>
    <style>
        th{
            color: red;
        }
        td
        {
            color: green;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!-- <a class="navbar-brand" href="#">WebSiteName</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>        
                
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>      

 <div class="container" style="margin-top:100px">
            <div class="col-md-3"></div>
                        <div class="col-md-5">            
                        
            <%
 

			String umname="";

			String umemail="";
			
			String simtype="";
			
			String mboilenu="";

			String simname="";
			
			String circle="";
    
			String problem="";
			
			String admin="";
    
			HttpSession session1=request.getSession();
			String email=(String)session1.getAttribute("email");
//System.out.println("user emailllllllll"+email);
			

%>
	
		
<% 

Connection con=DbCon.create();

PreparedStatement ps=con.prepareStatement("SELECT * FROM mobile.showmobile  where umemail='"+email+"'");

   
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
	admin=rs.getString(8);
	
	%>
	<table style="width:100%">
	<tr>
<th>NAME</th><td><%=umname%></td></tr>
<tr><th>EMAIL</th><td><%=umemail%></td><tr>
<tr><th>SIM TYPE</th><td><%=simtype%></td></tr>
<tr><th>MOBILE NUMBER</th><td><%=mboilenu%></td></tr>
<tr><th>SIM NAME</th><td><%=simname%></td></tr>
<tr><th>AREA</th><td><%=circle%></td></tr>
<tr><th>USER PROBLEM</th><td><%=problem%></td></tr>
<tr style="border: 2px solid Violet;"><th>SHOW ADMIN</th><td><%=admin%></td> </tr>
<hr>
<%}%>
</table>
</div>
            <div class="col-md-4"></div>
        </div> 
</body>
</html>