package project;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/drivercontroller")
public class drivercontroller extends HttpServlet{
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	String uname=null,var=null;
	HttpSession session=req.getSession();
	uname=(String)session.getAttribute("k");
	var=req.getParameter("post");
	Connection conn;
	  
	if(var.equals("My Profile"))
	{
		res.sendRedirect("driverprofile.jsp?k="+uname);
	}
	else if(var.equals("Booking Details"))
	{
		session.setAttribute("u",uname);
		res.sendRedirect("bookingdetails2.jsp");		
	}
	else if(var.equals("profile"))
	{
		String of=null,uf=null;
		of=req.getParameter("of");
		uf=req.getParameter("uf");
		if(of!=null)
		{
			res.sendRedirect("ownerprofile1.jsp?k1="+of);	
		}
		else if(uf!=null)
		{
			res.sendRedirect("userprofile1.jsp?k1="+uf);		
		}
		
	}
	}
}
