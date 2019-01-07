<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>Insert title here</title>
<style>
        body {
    /*background-image: url("images/evans-cyber-187104312-100452960-primary.idge.jpg");*/
    background-image: url("images/dar.jpg");
           
             background-repeat: no-repeat;
            background-size: 100% 800px;;
}
    </style>
</head>
<body>
    <div class="container" style="margin-top:100px">
            <div class="col-md-4"></div>
            <div class="col-md-4">
      <div class="panel panel-primary" style="max-height:40% ; max-height: 40%;">
      <div class="panel-heading">Log In</div>
      <div class="panel-body" >
    
         <div class="well">
        <form action="Login" method="post">
          <div class="form-group">
            <label for="email" class="col-form-label">Email Id:</label>
            <input type="email" name="email" class="form-control">
          </div>
          <div class="form-group">
            <label for="password" class="col-form-label">Password:</label>
            <input type="password" name="pws" class="form-control">
          </div>
            <div class="form-group">
               <input type="submit" value="Log In" class="btn btn-primary btn-block">                                
            </div>
            
            
            <div class="form-group">
               <center><a href="regs.jsp">create on account</a></center>
            </div>           
           
        </form>
             
          </div>
          </div>
      </div>      
        </div>
            <div class="col-md-4"></div>
        </div>
</body>
</html>