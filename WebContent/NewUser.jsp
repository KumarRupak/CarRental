<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>User LogIN</title>
<link  rel="stylesheet" type="text/css" href="projects//userlogin.css">
</head>
<body>
<div class="loginbox">
<img src="projects//user.png" class="av">
<h1>Login Here</h1>
<form action="Login">
<p>Username</p>
<input type="text"  name="uname" placeholder="Enter User ID" required>
<p>Password</p>
<input type="password" name="password" placeholder="Enter Password" required>
<br>
<input type="submit" value="login">
<br>
<a href="forgot.jsp">Lost Your Password</a>
<br>
<a href="UserRegistation.jsp">Don't have an account?</a>
</form>
</div>
</body>
</html>