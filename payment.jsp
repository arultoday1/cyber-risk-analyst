<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/style1.css">
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.js"></script>
<title>Payment</title>
    <style>
        body {    
    background-image: url("images/pay2.jpg");
             background-repeat: no-repeat;
            background-size: 100% 800px;
}

    </style>
<script type="text/javascript">
        $(document).ready(function(){
            $("#payment").click(function(){
                alert("Your Transaction Is Successful");
            });
        });
    </script>
</head>
<body>
<div class="container" style="margin-top: 70px">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <h3>payment</h3>

                  <ul class="nav nav-tabs">      
    <li class="active"><a data-toggle="tab" href="#menu1">Credit/Debit</a></li>  
    <!--<li><a data-toggle="tab" href="#menu2">Netbanking</a></li>  
    <li><a data-toggle="tab" href="#menu3">Paytm Payment </a></l-->      
  </ul>  

  <div class="tab-content">  
    
    <div id="menu1" class="tab-pane fade in active"> 
        <br>
        <form action="Payment" method="post">
          <div class="form-group">
            <label for="email" class="col-form-label">Name on Card</label>
            <input type="text" name="card" class="form-control" required="">
          </div>
          <div class="form-group">
            <label for="password" class="col-form-label">Card Number</label>
            <input type="text" name="cnumber" placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="password" class="col-form-label">CVV</label>
            <input type="text" name="cvv" placeholder="&#149;&#149;&#149;" class="form-control" required="">
          </div>
            <div class="form-group">
            <label for="password" class="col-form-label">Expiration Date</label>
            <input type="text" name="expdate" placeholder="MM/YY" class="form-control" required="">
          </div>
            <div class="form-group">
               <input type="submit" value="Make a payment " id="payment" class="btn btn-primary">                                
            </div>
        </form>
        
    </div>  
      
      </div>    
    </div>
        </div>

</body>
</html>