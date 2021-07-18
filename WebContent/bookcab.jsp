<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="projects//bookcab.css">
</head>
<body>
<%
String uname=(String)session.getAttribute("k");
session.setAttribute("uname", uname);
%>
<form action="bookcab">
<center><marquee style="background-color:orange"><h2>Booking  for Cab</h2></marquee></center><br>
<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                    </div>
                   </div>
                   <iframe width="500" height="300" align="right" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11880.492291371422!2d12.4922309!3d41.8902102!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x28f1c82e908503c4!2sColosseo!5e0!3m2!1sit!2sit!4v1524815927977" frameborder="0" style="border:0" allowfullscreen></iframe>
                   <input type="text" placeholder="Enter The Choosen Car ID" name="carid"><br>
                   <input type="text" placeholder="Enter The Choosen Deiver ID" name="driverid"><br>
                   <input type="text" placeholder="Enter Pick up Location" name="pickuplocation"><br>
                   <input type="text" placeholder="Enter Drop Location" name="droplocation"><br>
                   <input type="text" placeholder="Enter The Distance In Km" name="distance"><br>
                   <label> Enter Pick up Date</label><br>
                   <input type="date" name="pickupdate"><br>
                   <label> Enter Pick up Time This format</label><br>
                   <input type="text" placeholder="HH/MM/SS" name="pickuptime">
                   <input type="submit" value="Book Now">
                   <input type="reset">
                   </div>
                   </form>
</body>
</html>