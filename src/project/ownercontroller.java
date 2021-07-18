package project;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ownercontroller")
public class ownercontroller extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	String uname=null,var=null;
	HttpSession session=req.getSession();
	uname=(String)session.getAttribute("k");
	var=req.getParameter("post");
	Connection conn;
	  
	if(var.equals("My Profile"))
	{
		res.sendRedirect("ownerprofile.jsp?k="+uname);
	}
	else if(var.equals("Booking Details"))
	{
		session.setAttribute("u",uname);
		res.sendRedirect("bookingdetails1.jsp");		
	}
	else if(var.equals("profile"))
	{
		String uf=null,df=null;
		uf=req.getParameter("uf");
		df=req.getParameter("df");
		if(uf!=null)
		{
			res.sendRedirect("userprofile1.jsp?k1="+uf);	
		}
		else if(df!=null)
		{
			res.sendRedirect("driverprofile1.jsp?k1="+df);		
		}
		
	}
	}
}