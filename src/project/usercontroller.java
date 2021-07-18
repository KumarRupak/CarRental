package project;

import java.io.IOException;
import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBconnection.connectDB;

@WebServlet("/usercontroller")
public class usercontroller extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	String uname=null,var=null,city=null;
	HttpSession session=req.getSession();
	uname=(String)session.getAttribute("k");
	var=req.getParameter("post");
	Connection conn;
	  
	if(var.equals("My Profile"))
	{
		res.sendRedirect("userprofile.jsp?k="+uname);
	}
	else if(var.equals("Find Cab"))
	{
		city=(String)session.getAttribute("city");
		res.sendRedirect("findcar.jsp?v="+city);
	}
	else if(var.equals("find driver"))
	{
		city=(String)session.getAttribute("city");
		res.sendRedirect("finddriver.jsp?v="+city);	
	}
	else if(var.equals("book cab"))
	{
		session.setAttribute("v",uname);
		res.sendRedirect("bookcab.jsp");	
	}
	else if(var.equals("Booking Details"))
	{
		session.setAttribute("u",uname);
		res.sendRedirect("bookingdetails.jsp");		
	}
	else if(var.equals("profile"))
	{
		String of=null,df=null;
		of=req.getParameter("of");
		df=req.getParameter("df");
		if(of!=null)
		{
			res.sendRedirect("ownerprofil1e1.jsp?k1="+of);	
		}
		else if(df!=null)
		{
			res.sendRedirect("driverprofile1.jsp?k1="+df);		
		}
		
	}
	}

}
