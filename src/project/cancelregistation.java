package project;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnection.connectDB;

import java.sql.*;

@WebServlet("/cancel")
public class cancelregistation extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String RI=null,ownerid=null,driverid=null,var=null;
		String userid=(String)req.getSession().getAttribute("v");
		RI=req.getParameter("bookingid");
		var=req.getParameter("cancel");
	    Connection conn;
	  if(var.equals("cancel Booking"))
	  {
	try {
		conn = connectDB.Connect();
		  Statement st=conn.createStatement();
		  ResultSet rs=st.executeQuery("select * from bookcab where registationid='"+RI+"'");
		  while(rs.next())
		  {
			  ownerid=rs.getString("carid");
			  driverid=rs.getString("driverid");
		  }
		  PreparedStatement st1=conn.prepareStatement("delete from bookcab where registationid='"+RI+"'");
		  st1.executeUpdate();
		  PreparedStatement st2=conn.prepareStatement("update driver_reg set avaliable='"+"avaliable"+"' where email='"+driverid+"'");
		  st2.executeUpdate();
		  PreparedStatement st3=conn.prepareStatement("update owner_reg set avaliable='"+"avaliable"+"' where email='"+ownerid+"'");
		  st3.executeUpdate();
		  res.getWriter().println("<script>alert('Cancel Successfully Done');"+ "window.location.href='userhome.jsp?k="+userid+"';</script>");
					
			
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  }
	  else  if(var.equals("Update Bookikg"))
	  {
	try {
		conn = connectDB.Connect();
		  Statement st=conn.createStatement();
		  ResultSet rs=st.executeQuery("select * from bookcab where registationid='"+RI+"'");
		  while(rs.next())
		  {
			  ownerid=rs.getString("carid");
			  driverid=rs.getString("driverid");
		  }
		  PreparedStatement st1=conn.prepareStatement("delete from bookcab where registationid='"+RI+"'");
		  st1.executeUpdate();
		  PreparedStatement st2=conn.prepareStatement("update driver_reg set avaliable='"+"avaliable"+"' where email='"+driverid+"'");
		  st2.executeUpdate();
		  PreparedStatement st3=conn.prepareStatement("update owner_reg set avaliable='"+"avaliable"+"' where email='"+ownerid+"'");
		  st3.executeUpdate();
		  res.getWriter().println("Operation Successfully Done");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	 
	  }
	
	
	}

}
