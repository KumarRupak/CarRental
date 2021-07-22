<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
    <%@ page import="DBconnection.connectDB"%>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
	 response.getWriter().println("<script>alert('Account Hasbeen Deleted ! Thanks');"
				+ "window.location.href='index.jsp';</script>");
}
%>
  <div class="card">
                <div class="card-header bg-info text-white">
                    <h5 class="card-title">EDIT PROFILE</h5>
                </div>
                <div class="card-body"  style=" overflow:scroll;height:480px;">
                   <form action="update1" mathod="post">
<div class="row">
<div class="col-md-4">

<div class="col-md-4">
<input class="form-control" name="firstname" type="text" placeholder="Enter your First Name" style="width:200px" required> 
<label class="label label-default bg-info text-white"><% out.print("    "+firstname+""); %></label>
</div>

<div class="col-md-4">
<input class="form-control" name="lastname" type="text" placeholder="Enter your Last Name" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("      "+lastname+"");%></label>
</div>

<div class="col-md-4">
<input class="form-control"name="phone" type="number" placeholder="Enter your Mobile Number" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("     "+phone+"");%></label>
</div>

<div class="col-md-4">
<input class="form-control" name="state" type="text" placeholder="Enter your State" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("        "+state+"");%></label>
</div>

<div class="col-md-4">
<input class="form-control" name="city" type="text" placeholder="Enter your City" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("       "+city+"");%></label>
</div>

<div class="col-md-4">
<input class="form-control" name="pin"  type="number" placeholder="Enter your Area Pin Code" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("       "+pin+"");%></label>
</div>

<div class="col-md-4">
<input class="form-control" name="password" type="password" placeholder="Enter your New Password" style="width:200px" required>
<label class="label label-default bg-info text-white"><% out.print("        "+password+"");%></label>
</div>

</div>
</div>


                </div>
                <div class="card-footer"  align="center">
                    <input class="btn btn-outline-primary"" type="submit" value="update">
                </div>
                </form>
            </div>

</body>
</html>