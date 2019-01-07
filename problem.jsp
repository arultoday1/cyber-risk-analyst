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
<title>Home</title>
<style>
        h1 {
    margin-left: 15px;
    margin-bottom: 20px;
}

@media (min-width: 768px) {

    .brand-pills > li > a {
        border-top-right-radius: 0px;
    	border-bottom-right-radius: 0px;
    }
    
    li.brand-nav.active a:after{
    	content: " ";
    	display: block;
    	width: 0;
    	height: 0;
    	border-top: 20px solid transparent;
    	border-bottom: 20px solid transparent;
    	border-left: 9px solid #428bca;
    	position: absolute;
    	top: 50%;
    	margin-top: -20px;
    	left: 100%;
    	z-index: 2;
    }
}
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
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
        <li class="active"><a href="index.jsp">HOME</a></li>
        <!--<li><a href="#">MOBILE</a></li>
        <li><a href="#">DTH</a></li>
        <li><a href="#">DATA CARD</a></li>
        <li><a href="#">LAND LINE</a></li>-->
        <li><a href="problem.jsp">PROBLEM</a></li>
        <li><a href="recharge.jsp">RECHARGE</a></li>
        <li><a href="message.jsp">INBOX</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li><a href="login.html" data-toggle="modal" data-target=".bd-example-modal-sm"><span class="glyphicon glyphicon-log-out"></span>&nbsp; Log Out</a></li>
      </ul>
    </div>
  </div>
</nav>

        <div class="jumbotron" style="margin-top:3px">
        <div class="col-md-12">
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
        <img src="images/img5.jpg" alt="Los Angeles" style="width:1500px;height:600px;">
        <div class="carousel-caption">          
        </div>
      </div>

      <div class="item">
        <img src="images/img4.jpg" alt="Chicago" style="width:1500px;height:600px;">
        <div class="carousel-caption">          
        </div>
      </div>
    
      <div class="item">
        <img src="images/call2.jpg" alt="New York" style="width:1500px;height:600px;">
        <div class="carousel-caption">          
        </div>
      </div>
        
        <div class="item">
        <img src="images/img3.jpg" alt="New York" style="width:1500px;height:600px;">
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
</div>
    <section>
        <br>
        <br>
        <br>
        </section>
<div class="container">        
      <div class="col-sm-3">        
                <ul class="nav nav-pills brand-pills nav-stacked" role="tablist">   
                    <br>
                    <br>
                    <br>
                    <li role="presentation" class="brand-nav active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-phone"></span>&nbsp; &nbsp; Mobile</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-blackboard"></span>&nbsp; &nbsp; DTH</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-credit-card"></span>&nbsp; &nbsp; Data Card</a></li>
                    <li role="presentation" class="brand-nav"><a href="#tab4" aria-controls="tab4" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; &nbsp; Land Line</a></li>
                </ul>
            </div>
 <!--   <div class="col-md-1"></div>-->
            <div class="col-sm-6">
                <div class="tab-content">
                    
                    <div role="tabpanel" class="tab-pane active" id="tab1">
                        <br>
                        <br>
                        <br>
                        
                            <%
                            
                       	HttpSession session1=request.getSession();
						String email=(String)session1.getAttribute("email");
	
	
						%>
    
                        
                           <span style="font-size: 130px" class="glyphicon glyphicon-phone"></span>
                        <form action="Mobile" method="post">
                            <div class="form-group">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="sim" value="PREPAID" required="">PREPAID 
                                </label>
                            </div>&nbsp; &nbsp; &nbsp; &nbsp;
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="sim" value="PREPAID " required="">POSTPAID
                                </label>
                            </div>
                        </div>
                    </div>                              
                      </div>
                            <br>
                            <br>
                                                
                            <div class="form-group">
  <label class="col-form-label" for="name">Name</label>
  <input type="text" name="mname" placeholder="Name" class="form-control" required="">  
  </div>
    
<!-- Email account input-->
  <div class="form-group">
  <label class="col-form-label" for="email">E-mail</label>  
  <input type="text" name="memail" placeholder="Email" class="form-control" value="<%=email%>" required="">  
  </div>
                            
                            
                            <div class="form-group">
                    <label class="col-form-label" for="MobileNumber">Mobile Number </label> 
                <input type="text" name="mob" placeholder="Mobile Number" class="form-control" required="">    
                    </div> 
                    
                            <div class="form-group">
                                 <label class="col-form-label">Service Provider</label>
                            <div class="agileits-select">
                                <select class="form-control" name="simname" required="required" >
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Airtel">Airtel</option>                                  
                                  <option data-tokens="BSNL">BSNL</option>
                                  <option data-tokens="Tata Docomo">Tata Docomo</option>
                                  <option data-tokens="Reliance GSM">Reliance GSM</option>
                                  <option data-tokens="Reliance CDMA">Reliance CDMA</option>
                                  <option data-tokens="Telenor">Telenor</option>
                                  <option data-tokens="Jio">Jio</option>
                                  <option data-tokens="Vodafone">Vodafone</option>
                                  <option data-tokens="Idea">Idea</option>
                                  <option data-tokens="MTS">MTS</option>
                                </select>
                                </div>
                            </div>
                            
                          <div class="form-group">
                                <div class="agileits-select">
                                    <label class="col-form-label">Select Circle</label>
                                <select class="form-control" name="circle" required="required" >
                                  <option data-tokens="Select Circle">Select Circle</option>
                                  <option data-tokens="Chennai">Chennai</option>
                                  <option data-tokens="Delhi NCR">Delhi NCR</option>
                                  <option data-tokens="Kolkata">Kolkata</option>
                                  <option data-tokens="Mumbai">Mumbai</option>
                                  <option data-tokens="Maharashtra & Goa">Maharashtra & Goa</option>
                                  <option data-tokens="Assam">Assam</option>
                                  <option data-tokens="Bihar & Jharkhand">Bihar & Jharkhand</option>
                                  <option data-tokens="Gujarat">Gujarat</option>
                                  <option data-tokens="Haryana">Haryana</option>
                                  <option data-tokens="Himachal Pradesh">Himachal Pradesh</option>
                                  <option data-tokens="Jammu & Kashmir">Jammu & Kashmir</option>
                                  <option data-tokens="Karnataka">Karnataka</option>
                                  <option data-tokens="Kerala">Kerala</option>
                                  <option data-tokens="Andhra Pradesh">Andhra Pradesh</option>
                                  <option data-tokens="MP & Chattisgarh">MP & Chattisgarh</option>
                                  <option data-tokens="North East">North East</option>
                                  <option data-tokens="Orissa">Orissa</option>
                                  <option data-tokens="Punjab">Punjab</option>
                                  <option data-tokens="Rajasthan">Rajasthan</option>
                                  <option data-tokens="Tamilnadu">TamilNadu</option>
                                  <option data-tokens="UP East">UP East</option>
                                  <option data-tokens="UP West & Utterkhand">UP West & Uttarakhand</option>
                                  <option data-tokens="West Bengal">West Bengal</option>
                                </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
    <label for="problem description">Problem Description</label>
    <textarea class="form-control" name="problem" rows="5"></textarea>
  </div>
    
    <div class="form-group">
     <input type="submit" value="REGISTER" class="btn btn-primary">
    </div>
        </form>     
            </div>
                    <div class="col-md-3"></div>
                    
                    <div role="tabpanel" class="tab-pane" id="tab2">
                        <br>
                        <br>
                        <br>
                    
                            <span style="font-size: 130px" class="glyphicon glyphicon-blackboard"></span>
                            <br>
                            <br>
                        <form action="Dth" method="post">
                            
                            <div class="form-group">
  <label class="col-form-label" for="name">Name</label>
  <input type="text" name="dname" placeholder="Name" class="form-control" required="">  
  </div>
    
<!-- Email account input-->
  <div class="form-group">
  <label class="col-form-label" for="email">E-mail</label>  
  <input type="text" name="demail" placeholder="Email" class="form-control" value="<%=email%>" required="">  
  </div>
                            
                        <div class="form-group">
                             <div class="agileits-select">
                                 <label class="col-form-label">Service Provider</label>
                                <select class="form-control" name="dthname" required="required">
                                  <option data-tokens="Select Operator">DTH Operator</option>
                                  <option data-tokens="Telenor">Tata Sky</option>                                  
                                  <option data-tokens="BSNL">Sun Direct</option>
                                  <option data-tokens="Airtel">Airtel Digital</option>                                  
                                  <option data-tokens="Tata Docomo">Videocon DTH</option>
                                  <option data-tokens="Reliance GSM">Dish TV</option>
                                  <option data-tokens="Reliance CDMA">Reliance </option>
                                  <option data-tokens="Reliance CDMA">Reliance </option>
                                </select>
                                </div>
                        </div>
                            
                            <div class="form-group">
                                <label class="col-form-label">Customer ID</label>
                             <input type="text" name="id" placeholder="Enter Customer ID" class="form-control" required="" >
                            </div>
                            
                            <div class="form-group">
    <label for="problem description">Problem Description</label>
    <textarea class="form-control" name="problem" rows="5"></textarea>
  </div>
    
    <div class="form-group">
     <input type="submit" value="REGISTER" class="btn btn-primary">
    </div>
                            
                        </form>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab3">
                        <br>
                        <br>
                        <br>
                        
                            <span style="font-size: 130px" class="glyphicon glyphicon-credit-card"></span>
                        
                           <br>
                            <br>
                        <form action="DataCatd" method="post">
                            
  <div class="form-group">
  <label class="col-form-label" for="name">Name</label>
  <input type="text" name="dcuname" placeholder="Name" class="form-control" required="">  
  </div>
    
<!-- Email account input-->
  <div class="form-group">
  <label class="col-form-label" for="email">E-mail</label>  
  <input type="text" name="dcuemail" placeholder="Email" class="form-control" value="<%=email%>" required="">  
  </div>

                            
                            <div class="form-group">
                                <label class="col-form-label" for="Datacard number">Enter your Datacard number </label> 
                             <input type="text" name="dcard" placeholder="Datacard number" class="form-control" required="" >
                            </div>
                            
                         <div class="form-group">
                            <div class="agileits-select">
                                <label class="col-form-label">Service Provider</label>
                                <select class="form-control"  name="dcname" required="" >
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Airtel">Airtel</option>                                  
                                  <option data-tokens="BSNL">BSNL</option>
                                  <option data-tokens="Tata Docomo">Tata Docomo</option>
                                  <option data-tokens="Reliance GSM">Reliance </option>                                  
                                  <option data-tokens="Telenor">Telenor</option>
                                  <option data-tokens="Jio">Jio</option>
                                  <option data-tokens="Vodafone">Vodafone</option>
                                  <option data-tokens="Idea">Idea</option>
                                  <option data-tokens="MTS">MTS</option>
                                </select>
                                </div>
                            </div>
                            
                            
                            
                            <div class="form-group">
    <label for="problem description">Problem Description</label>
    <textarea class="form-control" name="problem" rows="5"></textarea>
  </div>
    
    <div class="form-group">
     <input type="submit" value="REGISTER"  class="btn btn-primary">
    </div>
                            
                        </form>
                        
                    </div>
                    <div role="tabpanel" class="tab-pane" id="tab4">
                        <br>
                        <br>
                        <br>                        
                            <span style="font-size: 130px" class="glyphicon glyphicon-phone-alt"></span>
                            
                             <br>
                            <br>
                        <form action="LandLine" method="post">
                            
    <div class="form-group">
  <label class="col-form-label" for="name">Name</label>
  <input type="text" name="luname" placeholder="Name" class="form-control" required="">  
  </div>
    
<!-- Email account input-->
  <div class="form-group">
  <label class="col-form-label" for="email">E-mail</label>  
  <input type="text" name="luemail" placeholder="Email" class="form-control" value="<%=email%>" required="">  
  </div>

                            
                             <div class="form-group">
                                 <label class="col-form-label" required="required">Service Provider</label>
                            <div class="agileits-select">
                                <select class="form-control"name="landline" required="required" >
                                  <option data-tokens="Select Operator">Select Operator</option>
                                  <option data-tokens="Airtel">Airtel Landline</option>                                  
                                  <option data-tokens="BSNL">BSNL Landline</option>
                                  <option data-tokens="Tata Docomo">MTNL Delhi</option>                                  
                                </select>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-form-label" for="Datacard number">Landline number </label> 
                             <input type="text" name="landnum" placeholder="Telephone Number(with STD code)" class="form-control" required="" >
                            </div>
                            
                            <div class="form-group">
    <label for="problem description">Problem Description</label>
    <textarea name="problem" class="form-control" rows="5"></textarea>
  </div>
    
    <div class="form-group">
     <input type="submit" value="REGISTER"  class="btn btn-primary">
    </div>
                            
                        </form>
          
                        
                    </div>
                </div>
            </div>
        
    <div class="col-md-3"></div>
    </div>
        
    <div class="col-md-6 content-left text-center" style="background-color:YellowGreen;">
        <h3>service</h3>
        </div>
    <div class="col-md-6 content-left text-center" style="background-color:Turquoise;">
        <h3>secured</h3>
        </div>
    </div>
</body>
</html>