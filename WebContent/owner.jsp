<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>owner</title>
<link rel="stylesheet" type="text/css" href="projects//owner.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<form action="submit2">

<div class="container" style="margin-top:5%;">
 <div class="row">
 
 <div class="col-md-6">
 <label></label>
<input class="form-control" type="text" placeholder="Enter First Name" name="firstname" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" name="lastname" type="text" placeholder="Enter Last Name" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" name="email" type="email" placeholder="Enter Your Email ID" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter Mobile No" name="mobile" required>
</div>

<div class="col-md-6">  
<label></label>                  
<input class="form-control" type="number" placeholder="Enter Aadhr No" name="aadhr" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text"  placeholder="Enter model Name" name="carmodel" required> 
</div>

<div class="col-md-6"> 
<label></label>                  
<input class="form-control" name="carno" type="text" placeholder="Enter car no" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter The Number Of Seats of The your Car " name="seats" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter The CarMileage per Litre" name="mileage" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text" placeholder="Enter State" name="state" required>
</div>

<div class="col-md-6">
<label></label>                    
<input class="form-control" type="number" placeholder="Enter PIN Code" name="pin" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="text"  placeholder="Enter Your City" name="landmark" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="password" placeholder="Enter Password" name="password" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" name="confirmpassword" type="password" placeholder="Confirm Password" required>
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
<input class="form-control"  type="text" placeholder="Enter Your Security Answer" name="answer" required>
</div>

<div class="col-md-6">
<label></label>
<input class="form-control" type="number" placeholder="Enter Your Amount Charges Per Km " name="amount" required>
</div>

</div>
</div>
<br><br>
<div class="loginbox" align="center">
<input type="submit">
<br><br>
<input type="reset" >
</form>
</div>
</body>
</html>