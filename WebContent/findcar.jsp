<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="DBconnection.connectDB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="projects//table.css">
</head>
<body>
<table id="customers">
  <tr>
    <th>OWNER ID</th>
    <th>CAR NUMBER</th>
    <th>Model Name</th>
    <th>OWNER MOBILE NO</th>
    <th>SEATS</th>
    <th>MILEAGE</th>
    <th>STATE</th>
    <th>CITY</th>
    <th>AREA PIN</th>
    <th>AMOUNT PER Km</th>
  </tr>
 <%
			  String city=null;
			  city=request.getParameter("v");
			  Connection conn=connectDB.Connect();
			  Statement st=conn.createStatement();
			  ResultSet rs=st.executeQuery("select * from owner_reg where landmark='"+city+"' and  avaliable='"+"avaliable"+"'");
			  while(rs.next())
			  {
				  out.print("<tr><td>");
					out.print(rs.getString("email"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("carno"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("modelno"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("mobileno"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("carseats"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("carmileage"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("state"));
					out.println("</td>");
					out.print("<td>");
					out.print(rs.getString("landmark"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("pin"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("amount"));
					out.print("</td></tr>");

			  }
			  %>
</table>
<br>
<p style="background-color:black;
	font-size:20px;
	font-family:arial;
	border:1px solid red;
	color:white;">!!Instruction  [Please Note the Car ID which you want to book this will help you at the time book your cab] </p>
</body>
</html>