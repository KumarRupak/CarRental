<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="projects//userhome.css">
</head>
<body>
<form action="drivercontroller">
<%
String uname=request.getParameter("k");
session.setAttribute("k", uname);
%>
<div class="logo"></div>
<nav>
<ul>
<li style="float:left"><a href="#"><img src="projects//icon1.png"></a></li>
<li><a href="index.jsp">Home</a></li>
<li><a href="index.jsp">Home</a>
<li><a href="driverlog.jsp">Log out</a>
</ul>
</nav>
<br><br><br>
<div class="cs">
<input type="submit" name="post" value="My Profile"/>
</div>
<div class="cs1">
<input type="submit" name="post" value="Booking Details"/>
</div>
</form>
</body>
</html>