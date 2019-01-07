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
<title>index</title>

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
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">HOME</a></li>        
        <!--<li><a href="adminlogin.jsp">ADMIN</a></li>        -->
        <li><a href="login.jsp">USER</a></li>        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="adminlogin.jsp"><span class="glyphicon glyphicon-user"></span> ADMIN</a></li>
      </ul>
    </div>
  </div>
</nav>      
    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top: -20px">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/call6.jpg" alt="Los Angeles" style="width:1500px;height:700px;">
        <div class="carousel-caption">          
        </div>
      </div>

      <div class="item">
        <img src="images/best.jpg" alt="Chicago" style="width:1500px;height:700px;">
        <div class="carousel-caption">          
        </div>
      </div>
    
      <div class="item">
        <img src="images/sim10.jpg" alt="New York" style="width:1500px;height:700px;">
        <div class="carousel-caption">          
        </div>
      </div>
        
        <div class="item">
        <img src="images/sim.jpg" alt="New York" style="width:1500px;height:700px;">
        <div class="carousel-caption">         
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> 

</body>
</html>