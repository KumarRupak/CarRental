<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
    <%@ page import="DBconnection.connectDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="projects//usreregistation.css">
</head>
<body style="background:url(projects//nature.jpg)">
<%!
String var=null,password=null,uname=null,firstname=null,lastname=null,phone=null,state=null,city=null,pin=null;
Connection conn=null;%>
<%
var=request.getParameter("button");
uname=(String)session.getAttribute("k");
session.setAttribute("k", uname);
conn=connectDB.Connect();
System.out.println(var);
if(var.equals("Edit profile"))
{
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from user_registation where email='"+uname+"'");
while(rs.next())
{
	firstname=rs.getString("firstname");
	lastname=rs.getString("lastname");
	phone=rs.getString("mobileno");
	state=rs.getString("state");
	city=rs.getString("lanmark");
	pin=rs.getString("pin");
	password=rs.getString("password");
	
}
}
else if(var.equals("Delete Account"))
{
	 PreparedStatement st1=conn.prepareStatement("delete from bookcab where userid='"+uname+"'");
	 st1.executeUpdate();
	 PreparedStatement st2=conn.prepareStatement("delete from user_registation where email='"+uname+"'");
	 st2.executeUpdate();
	 response.sendRedirect("index.jsp");
}
%>
<form action="update1" mathod="post">
<div class="loginbox">
<input name="firstname" type="text" placeholder="Enter your First Name" style="width:200px"> <label><% out.print("    ["+firstname+"]"); %></label>
<br><br>
<input name="lastname" type="text" placeholder="Enter your Last Name" style="width:200px"><label><% out.print("      ["+lastname+"]");%></label>
<br><br>
<input name="phone" type="text" placeholder="Enter your Mobile Number" style="width:200px"><label><% out.print("     ["+phone+"]");%></label>
<br><br>
<input name="state" type="text" placeholder="Enter your State" style="width:200px"><label><% out.print("        ["+state+"]");%></label>
<br><br>
<input name="city" type="text" placeholder="Enter your City" style="width:200px"><label><% out.print("       ["+city+"]");%></label>
<br><br>
<input name="pin"  type="text" placeholder="Enter your Area Pin Code" style="width:200px"><label><% out.print("       ["+pin+"]");%></label>
<br><br>
<input name="password" type="text" placeholder="Enter your New Password" style="width:200px"><label><% out.print("        ["+password+"]");%></label>
<br><br>
<input type="submit" value="update">
<br><br>
<input type="reset">
</div>
</form>
</body>
</html>