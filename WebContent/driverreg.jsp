<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Driver Registation</title>
<link rel="stylesheet" type="text/css" href="projects//driverreg.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<form action="submit1">
<div class="container" style="margin-top:5%;">
 <div class="row">
 
<div class="col-md-6">
<label></label>
<input class="form-control" type="text" placeholder="Enter First Name" name="1stname" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text" placeholder="Enter Last Name" name="lastname" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="email" placeholder="Enter Your Email ID" name="email" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter Mobile No" name="mobileno" required>
</div>

<div class="col-md-6">
<label></label>                    
<input class="form-control" type="number" placeholder="Enter Aadhr No" name="aadhrno" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text" placeholder="Enter State" name="state">    
</div>

<div class="col-md-6">
<label></label>                
<input class="form-control" type="number" placeholder="Enter PIN Code" name="pin">
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text" placeholder="Enter Your City" name="landmark" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter Driving licence" name="dl" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number"  placeholder="Enter Your Amount Charges Per Km " name="amount" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="password" placeholder="Enter Password" name="password" required> 
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="password" placeholder="Confirm Password" name="confirmpassword">
</div>

<div class="col-md-6">
<label></label>
<select style="margin-top: 10px;" name="question" class="btn btn-info dropdown-toggle" type="button">
 <div class="dropdown-menu dropdown-menu-right">
<option selected="selected" value="null">---------Choose Security Question---------</option>
<option value="What Was Your 1st School Name">What Was Your 1st School Name</option>
<option value="What Was Your Bestiee Name">What Was Your Bestiee Name</option>
</div>
</select>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control"  name="answer" type="password" placeholder="Enter Your Security Answer"  required>
</div>



</div>
</div>
<br><br>
<div class="loginbox" align="center">
<input type="submit">
<br><br>
<input type="reset">
</div>

</form>
</div>
</body>
</html>