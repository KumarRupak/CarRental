<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Driver Registation</title>
<link rel="stylesheet" type="text/css" href="projects//driverreg.css">
</head>
<body bgcolor="#000">
<div class="loginbox">
<form action="submit1">
<input type="text" placeholder="Enter First Name" name="1stname">                    <input type="text" placeholder="Enter Last Name" name="lastname">
<input type="text" style="width:325px" placeholder="Enter Your ID" name="email">
<br><br>
<input type="text" placeholder="Enter Mobile No" name="mobileno">                    <input type="text" placeholder="Enter Aadhr No" name="aadhrno">
<br><br>
<input type="text" placeholder="Enter State" name="state">                    <input type="text" placeholder="Enter PIN Code" name="pin">
<input type="text" style="width:320px" placeholder="Enter Your City" name="landmark">
<br><br>
<input type="text" style="width:320px" placeholder="Enter Driving licence" name="dl">
<br><br>
<input style="height:10px;
	padding:15px;" type="password" placeholder="Enter Password" name="password">                    <input style="height:10px;padding:15px;" type="password" placeholder="Confirm Password" name="confirmpassword">
<select name="question" size="" size="60px" height="30px">
<option selected="selected" value="">Choose a Security Question</option>
<option>What Was Your 1st School Name</option>
<option>What Was Your Bestiee Name</option>
</select>
<input  name="answer" type="text" placeholder="Enter Your Security Answer" style="width:325px">
<br><br>
<input type="text" style="width:320px" placeholder="Enter Your Amount Charges Per Km " name="amount">
<br><br>
<input type="submit">
<br><br>
<input type="reset" style="
	border:none;
	outline:none;
	height:40px;
	background:red;
	color:white;
	front-size:18px;
	border-radius:20px;
	width:350px;">
	</form>
</div>
<iframe src="frame4.html"  height="600px" width="400px" direction="right" align="right"></iframe>
</body>
</html>