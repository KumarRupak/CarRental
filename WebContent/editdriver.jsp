<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
    <%@ page import="DBconnection.connectDB"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="projects//usreregistation.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:url(projects//nature.jpg)">
<%!
String var=null,password=null,uname=null,firstname=null,phone=null,state=null,city=null,pin=null,amount=null;
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
ResultSet rs=st.executeQuery("select * from driver_reg where email='"+uname+"'");
while(rs.next())
{
	firstname=rs.getString("firstname");
	phone=rs.getString("mobileno");
	state=rs.getString("state");
	city=rs.getString("landmark");
	pin=rs.getString("pin");
	password=rs.getString("password");
	amount=rs.getString("amount");
}
}
else if(var.equals("Delete Account"))
{
	 PreparedStatement st1=conn.prepareStatement("delete from bookcab where driverid='"+uname+"'");
	 st1.executeUpdate();
	 PreparedStatement st2=conn.prepareStatement("delete from owner_reg where email='"+uname+"'");
	 st2.executeUpdate();
	 response.getWriter().println("<script>alert('Account Hasbeen Deleted ! Thanks');"
				+ "window.location.href='index.jsp';</script>");
}
%>
<form action="update3" mathod="post">
<div class="loginbox">
<input name="firstname" type="text" placeholder="Enter your First Name" style="width:200px"> <label><% out.print("    ["+firstname+"]"); %></label>
<br>
<input name="phone" type="text" placeholder="Enter your Mobile Number" style="width:200px"><label><% out.print("     ["+phone+"]");%></label>
<br>
<input name="state" type="text" placeholder="Enter your State" style="width:200px"><label><% out.print("        ["+state+"]");%></label>
<br>
<input name="city" type="text" placeholder="Enter your City" style="width:200px"><label><% out.print("       ["+city+"]");%></label>
<br>
<input name="pin"  type="text" placeholder="Enter your Area Pin Code" style="width:200px"><label><% out.print("       ["+pin+"]");%></label>
<br>
<input name="amount" type="text" placeholder="Enter your Charges Per Km" style="width:200px"><label><% out.print("     ["+amount+"]");%></label>
<br>
<input name="password" type="text" placeholder="Enter your New Password" style="width:200px"><label><% out.print("        ["+password+"]");%></label>
<br><br>
<input type="submit" value="update">
<br><br>
<input type="reset">
</div>
</form>
</body>
</html>