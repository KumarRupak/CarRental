<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" type="text/css" href="projects\\driverfor.css">
</head>
<body bgcolor="778899">
<div class="forgot">
<img  src="projects//lock.jpg" class="av">
<form  action="forgot2">
<input type="text" placeholder="Enter Your ID" name="uname"  required>
<br><br>
<%! String val=null; %>
<% val=request.getParameter("k"); %>
<label><% out.print(val); %></label>
<br>
<input id="answer" type="text" placeholder="Enter Your Security Answer" name="answer">
<br><br>
<input id="passwd" type="password" placeholder="Enter Your New Password" name="password">
<br><br>
<input type="submit" name="forgot" value="question">
<br><br>
<input type="submit" name="forgot" value="update">
</form>
</div>

</body>
</html>