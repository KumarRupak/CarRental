package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBconnection.connectDB;

@WebServlet("/update3")
public class update3 extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	String password=null,uname=null,firstname=null,lastname=null,phone=null,state=null,city=null,pin=null,amount=null;
	Connection con;
	HttpSession session=req.getSession();
	uname=(String)session.getAttribute("k");
	firstname=req.getParameter("firstname");
	lastname=req.getParameter("lastname");
	phone=req.getParameter("phone");
	state=req.getParameter("state");
	city=req.getParameter("city");
	pin=req.getParameter("pin");
	amount=req.getParameter("amount");
	password=req.getParameter("password");
	try {
		con = connectDB.Connect();
		PreparedStatement st1=con.prepareStatement("update owner_reg set firstname='"+firstname+"',lastname='"+lastname+"',mobileno='"+phone+"',state='"+state+"',landmark='"+city+"',pin='"+pin+"',amount='"+amount+"',password='"+password+"'  where email='"+uname+"'");
		st1.executeUpdate();
		res.getWriter().println("<script>alert('Updated Successfully Done');"
				+ "window.location.href='driverlog.jsp';</script>");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}


