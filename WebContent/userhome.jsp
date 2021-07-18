<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="projects//userhome.css">
</head>
<body bgcolor="black">
<%
String uname=(String)request.getParameter("k");
session.setAttribute("k", uname);
%>
<form action="usercontroller">
<div class="logo"></div>
<nav>
<ul>
<li style="float:left"><a href="#"><img src="projects//icon1.png"></a></li>
<li><a href="index.jsp">Home</a></li>
<li><a href="NewUser.jsp">Log out</a></li>
</ul>
</nav>
<br><br><br>
<div class="cs">
<input type="submit" name="post" value="My Profile"/>
</div>
<div class="cs1">
<input type="submit" name="post" value="Find Cab"/>
</div>
<div class="cs2">
<input type="submit" name="post" value="book cab"/>
</div>
<div class="cs2">
<input type="submit" name="post" value="find driver"/>
</div>
<div class="cs1">
<input type="submit" name="post" value="Booking Details"/>
</div>
</form>
</body>
</html>