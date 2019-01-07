<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>comment</title>
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
        <li class="active"><a href="index.jsp">HOME</a></li>        
                
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="logout.jsp"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>      

<%

String name=request.getParameter("uname");
System.out.println("name"+name);

String email=request.getParameter("umemail");
System.out.println("email"+email);

String sim=request.getParameter("simtype");
System.out.println("simtype"+sim);

String num=request.getParameter("mobile");
System.out.println("Number"+num);

 String simname=request.getParameter("simn");
 System.out.println("simName"+simname);
 
 String area=request.getParameter("area");
 System.out.println("register"+area);
 
 String uprob=request.getParameter("prob");
 System.out.println("userProble"+uprob);

%>
    </%>
<div class="container" style="margin-top: 70px">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <h3>Comments</h3>
                <div class="panel panel-primary" style="max-height:100% ; max-height: 100%;">                
    <div class="panel-heading">CUSTOMER DETAILS</div>
    <div class="panel-body bg-info">
        <form action="Smobile" method="post">
            <div class="form-group">
            <label for="name" class="col-form-label">Customer Name</label>
            <input type="text" name="cname" value="<%=name%>" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="email" class="col-form-label">Customer Email</label>
            <input type="email" name="cemail" value="<%=email%>" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="simtype" class="col-form-label">Sim Type</label>
            <input type="text" name="sim" value="<%=sim%>" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="mob" class="col-form-label">Mobile Number</label>
            <input type="text" name="mob" value="<%=num %>" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="simname" class="col-form-label">Sim Name</label>
            <input type="text" name="simname" value="<%=simname %>" class="form-control" required="">
          </div>
          <div class="form-group">
            <label for="simname" class="col-form-label">Name of Area</label>
            <input type="text" name="circle" value="<%=area %>" class="form-control" required="">
          </div>
          <div class="form-group">
            <label for="simname" class="col-form-label">Customer Problem</label>
            <input type="text" name="problem" value="<%=uprob %>" class="form-control" required="">
          </div>
            <div class="panel panel-success">
            <div class="panel-heading">ADMIN DETAILS</div>
                <div class="panel-body bg-success">
                    <div class="form-group">
    <label for="problem description"></label>
    <textarea class="form-control" name="aproblem" rows="5" required=""></textarea>
  </div>
                    
        <div class="form-group">
     <input type="submit" value="Send" id="sub" class="btn btn-primary">
    </div>
                </div>
            </div>
        </form>
                    
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>        
    
</body>
</html>