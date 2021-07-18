package project;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/profcontroller")
public class profilecontroller extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		HttpSession session=req.getSession();
		String user=null,owner=null,driver=null,var=null;
		var=req.getParameter("submit");
		owner=req.getParameter("owner");
		driver=req.getParameter("driver");
		user=req.getParameter("user");
		if(var.equals("show owner profile") && !owner.equals(""))	
		{
			res.sendRedirect("ownerprofile1.jsp?k1="+owner);
		}
		else if(var.equals("show driver profile")&& !driver.equals(""))
		{
			res.sendRedirect("driverprofile1.jsp?k1="+driver);	
		}
		else if(var.equals("show user profile")&& !user.equals(""))
		{
			res.sendRedirect("userprofile1.jsp?k1="+user);	
		}
		else
		{
			res.sendRedirect("profilee.jsp");	
		}
		
	}
	
	}


