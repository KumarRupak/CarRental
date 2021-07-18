<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
<%@ page import="DBconnection.connectDB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="projects//bookcab.css">
</head>
<body bgcolor="#00c6ff">
<form action="cancel">
<center><marquee style="background-color:cyan;width:1700px;"><h2>Booking  Details</h2></marquee></center><br>
<div class="container register">
                <div class="row">
                <img alt="" src="projects//car.png">
                    <div class="col-md-3 register-left">
                    </div>
                   </div>
                   <div id="customers">
                   <table border="1px" style="width:50%">
                   <tr>
                   <th>REGISTATION ID</th>
                   <th>USER ID</th>
                   <th>OWNER ID</th>
                   <th>DRIVER ID</th>
                   <th>PICKUP LOCATION</th>
                   <th>DROP LOCATION</th>
                   <th>PICKUP DATE</th>
                   <th>PICKUP TIME</th>
                   <th>DISTANCE(km)</th>
                   <th>CHARGES OF OWNER</th>
                   <th>CHARGES OF DRIVER</th>
                   <th>DATE OF REGISTATION</th>
                   </tr>
                   <%!String uname=null;%>
                     <%
			  uname=(String)session.getAttribute("u");
			  Connection conn=connectDB.Connect();
			  Statement st=conn.createStatement();
			  ResultSet rs=st.executeQuery("select * from bookcab where userid='"+uname+"'");
			  while(rs.next())
			  {
				  out.print("<tr><td>");
					out.print(rs.getString("registationid"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("userid"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("carid"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("driverid"));
					out.println("</td>");
					out.print("<td>");
					out.print(rs.getString("pickuplocation"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("droplocation"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("pickupdate"));
					out.println("</td>");
					out.print("<td>");
					out.print(rs.getString("pikuptime"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("distance"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getInt("amountowner"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getInt("amountdriver"));
					out.print("</td>");
					out.print("<td>");
					out.print(rs.getString("registationdate"));
					out.print("</td></tr>");

			  }
			  %>
                   </table>
                   <input type="text" placeholder="Enter Booking ID" name="bookingid">
                   <input type="submit"  name="cancel" value="cancel Booking">
                   </div>
                   </div>
                   </form>
</body>
</html>