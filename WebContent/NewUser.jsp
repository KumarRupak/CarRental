<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>User LogIN</title>
<link  rel="stylesheet" type="text/css" href="projects//userlogin.css">
</head>
<body>
<div class="loginbox">
<img src="projects//log.png" class="av">
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
<br>
<a href="index.jsp">Home</a>
</form>
</div>
</body>
</html>