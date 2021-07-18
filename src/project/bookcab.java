package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBconnection.connectDB;

@WebServlet("/bookcab")
public class bookcab extends HttpServlet{
	public void service(HttpServletRequest  req,HttpServletResponse res) throws IOException
	{
	String regdate=null,userid=null,carid=null,driverid=null,pickuplocation=null,droplocation=null,distance=null,pickupdate=null,amountdriver=null,amountowner=null,pickuptime=null,registationid=null;;
	int km=0,damt=0,oamt=0,dsum=0,osum=0,id=0;
	Connection con=null;
		Random random=new Random();
		SimpleDateFormat format=new SimpleDateFormat("dd/mm/yyy/:hh:mm:ss");
		Date date=new Date();
		regdate=format.format(date);
		HttpSession session=req.getSession();
		userid=(String)session.getAttribute("v");
		carid=req.getParameter("carid");
		driverid=req.getParameter("driverid");
		pickuplocation=req.getParameter("pickuplocation");
		droplocation=req.getParameter("droplocation");
		distance=req.getParameter("distance");
		pickupdate=req.getParameter("pickupdate");
		pickuptime=req.getParameter("pickuptime");
	try {
		id=random.nextInt(100000000);
		registationid="RI"+Integer.toString(id);
		con=connectDB.Connect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from owner_reg where email='"+carid+"'");
		while(rs.next())
		{
		amountowner=rs.getString("amount");
		}
		Statement st1=con.createStatement();
		ResultSet rs1=st1.executeQuery("select *from driver_reg where email='"+driverid+"'");
		while(rs1.next())
		{
		amountdriver=rs1.getString("amount");
		}
		km=Integer.parseInt(distance);
		damt=Integer.parseInt(amountdriver);
		oamt=Integer.parseInt(amountowner);
		dsum=km*damt;
		osum=km*oamt;
		PreparedStatement st2=con.prepareStatement("insert into bookcab(registationid,userid,carid,driverid,pickuplocation,droplocation,distance,pickupdate,pikuptime,amountdriver,amountowner,registationdate) values(?,?,?,?,?,?,?,?,?,?,?,?)");
		st2.setString(1,registationid);
		st2.setString(2, userid);
		st2.setString(3, carid);
		st2.setString(4, driverid);
		st2.setString(5, pickuplocation);
		st2.setString(6, droplocation);
		st2.setString(7,distance);
		st2.setString(8, pickupdate);
		st2.setString(9, pickuptime);
		st2.setInt(10, dsum);
		st2.setInt(11, osum);
		st2.setString(12, regdate);
		st2.executeUpdate();
		  PreparedStatement st4=con.prepareStatement("update driver_reg set avaliable='"+"notavaliable"+"' where email='"+driverid+"'");
		  st4.executeUpdate();
		  PreparedStatement st5=con.prepareStatement("update owner_reg set avaliable='"+"notavaliable"+"' where email='"+carid+"'");
		  st5.executeUpdate();
		 
		res.getWriter().println("<script>alert('Booking Successfully Done');"
				+ "window.location.href='userhome.jsp?k="+userid+"';</script>");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	

}
