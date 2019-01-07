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
<title>Admin logout</title>    
    <!-- <script>
$(document).ready(function(){   
    $("#mobile").load("mobile.jsp");        
    $("#dth").load("mobile.jsp");        
    });

</script> -->
</head>
<body>
    
<nav class="navbar navbar-expand-md bg-info navbar-dark fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
     <button type="button" class="navbar-toggle btn btn-info" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar btn btn-info"></span>
        <span class="icon-bar btn btn-info"></span>
        <span class="icon-bar btn btn-info"></span>                        
      </button>
      <a class="navbar-brand" href="#">Admin</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">      
      <ul class="nav navbar-nav navbar-right">
          <li><a href="" data-toggle="modal" data-target="bd-example-modal-sm"><span class="glyphicon glyphicon-user"></span>&nbsp; Log out</a></li>
      </ul>
    </div>
  </div>
</nav>              
        
        <div class="row">
                <div class="col-sm-2 sidebar sidebar-left">
                    <ul class="nav nav-pills nav-stacked">
                       <!-- <li><a data-toggle="pill" href="#dashboard">Dashboard</a></li> -->                       
                        <li class="active"><a data-toggle="pill" href="#test">Mobile</a></li>
                        <li><a data-toggle="pill" href="#test2">DTH</a></li>
                        <li><a data-toggle="pill" href="#test3">Data Card</a></li>
                        <li><a data-toggle="pill" href="#test4">Land Line</a></li>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <div class="tab-content">
                        <!--<div id="dashboard" class="tab-pane fade in active">
                            
                            <a href="home.jsp">HOME</a>
                        </div>-->
                        <div id="test" class="tab-pane fade in active">
                           <div class="col-lg-3 col-md-6">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <span style="font-size: 30px; color:orange" class="glyphicon glyphicon-phone" ></span>                                    
                                </div>
                                <div class="col-xs-9 text-right">                                    
                                    <div><h3>MOBILE</h3></div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">                                
                                <a href="mobile.jsp" id="mobile">View Details</a>  
                                <!--<a href="#" id="company" class="btn btn-success">View Details</a>  -->
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                        </div>
                        <div id="test2" class="tab-pane fade">
                            <div class="col-lg-3 col-md-6">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   <span style="font-size: 30px; color:teal" class="glyphicon glyphicon-blackboard"></span>
                                </div>
                                <div class="col-xs-9 text-right">                                    
                                    <div><h3>DTH</h3></div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <a href="dth.jsp">View Details</a>                                
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                        </div>
                        <div id="test3" class="tab-pane fade">
                            <div class="col-lg-3 col-md-6">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   <span style="font-size: 30px; color:tomato" class="glyphicon glyphicon-credit-card"></span>
                                </div>
                                <div class="col-xs-9 text-right">                                    
                                    <div><h3>Datacard</h3></div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <a href="datacard.jsp">View Details</a> 
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                        </div>
                        <div id="test4" class="tab-pane fade">
                            <div class="col-lg-3 col-md-6">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                   <span style="font-size: 30px; color:navy" class="glyphicon glyphicon-phone-alt"></span>
                                </div>
                                <div class="col-xs-9 text-right">                                    
                                    <div><H3>Land Line</H3></div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <a href="landline.jsp">View Details</a>                                
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        <!--<script type="text/javascript">
            $(document).ready(function(){
                $("#company").click(function(){
                /*$("#company").load("mobile.jsp");*/
                    alert("welcom");
                )};
            });
    </script>-->
</body>
</html>