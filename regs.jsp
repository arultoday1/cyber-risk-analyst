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
<title>Registration</title>
</head>
<body style="background-color:skyblue;">
<div class="col-md-7">
  <br>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/call6.jpg" alt="Los Angeles" style="width:1000px;height:600px;">
        <div class="carousel-caption">
        </div>
      </div>

      <div class="item">
        <img src="images/best.jpg" alt="Chicago" style="width:1000px;height:600px;">
        <div class="carousel-caption">
        </div>
      </div>
    
      <div class="item">
        <img src="images/sim10.jpg" alt="New York" style="width:1000px;height:600px;">
        <div class="carousel-caption">
         </div>
      </div>
        
        <div class="item">
        <img src="images/sim.jpg" alt="New York" style="width:1000px;height:600px;">
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
</div>
                   
            <div class="col-md-5">
                <div class="panel panel-primary" style="margin-top:20px">
      <div class="panel-heading">REGISTRATION FORM</div>
                    <div class="modal-body">
         <div class="well">
        <form action="Serv" method="post" autocomplete="off">
   <!-- Name input-->         
  <div class="form-group">
  <label class="col-form-label" for="user_nice_name">Your Name</label>
  <input type="text" placeholder="Your Name" class="form-control" title="Username (letters and numbers only, no punctuation or special characters)" pattern="[A-Za-z0-9]+" name="fname" required="required">  
      <br>
  </div>
    
<!-- Email account input-->
  <div class="form-group">
  <label class="col-form-label" for="userna,e">Your Email</label>  
  <input type="text" placeholder="Your Email Address" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Please enter valid email address" name="cemail" required="required">
      <br>
  </div>


<!-- Password input-->
<div class="form-group">
  <label class="col-form-label" for="passwordinput">Password </label> 
    <input type="password" placeholder="password" class="form-control" type="password" pattern=".{6,}"
								title="PLease  enter minimum six character" name="pass" required="required"> 
    <br>
  </div>
    
            
<!-- Phone input-->
<div class="form-group">
  <label class="col-form-label" for="MobilNumber">Mobile Number </label> 
    <input type="text" name="mob" placeholder="Mobile Number" class="form-control"  pattern="[7-9]{1}[0-9]{9}" title="Mobile number starting with 9 or 8 or 7 and other 9 digit using any number" required="required">
    <br>
  </div>            

            
 <div class="form-group">
     <input type="submit" value="NEW REGISTER" id="sub" class="btn btn-primary">&nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   &nbsp; &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;   &nbsp;  &nbsp; &nbsp; 
    <a href="login.jsp">Log In</a>
 </div>
        
</form>
 </div>
</div>      
    </div>        
        </div>
</body>
</html>