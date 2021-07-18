<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registation</title>
<link rel="stylesheet" type="text/css" href="projects//usreregistation.css">
</head>
<body>

<div class="loginbox">
<form action="submit" mathod="post">
<br><br>
<input type="text" placeholder="Enter First Name" name="1stname"/>                    <input type="text" placeholder="Enter Last Name"name="lastname">
<br><br>
<input type="text" style="width:325px" placeholder="Enter Your ID" name="ma">
<br><br>
<input type="text" placeholder="Enter Mobile No" name="mobileno">                    <input type="text" placeholder="Enter Aadhr No" name="aadhrno">
<br><br>
<input type="text" placeholder="Enter State" name="state">                    <input type="text" placeholder="Enter PIN Code" name="pin">
<br><br>
<input type="text" style="width:325px" placeholder="Enter Your City" name="landmark">
<br><br>
<input type="password" placeholder="Enter Password" name="password">                    <input type="password" placeholder="Confirm Password" name="confirmpassword">
<br><br>
<select name="question" size="" size="60px" height="200px">
<option selected="selected" value="null">Choose a Security Question</option>
<option value="What Was Your 1st School Name">What Was Your 1st School Name</option>
<option value="What Was Your Bestiee Name">What Was Your Bestiee Name</option>
</select>
<br><br>
<input name="answer" type="text" style="width:325px" placeholder="Enter Your Security Answer">
<br><br>
<input type="submit">
<br><br>
<input type="reset"></form>
</div>
<iframe src="frame1.html"  height="600px" width="400px"></iframe>
</body>
</html>