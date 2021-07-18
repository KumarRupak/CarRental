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

@WebServlet("/update1")
public class update1 extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	String password=null,uname=null,firstname=null,lastname=null,phone=null,state=null,city=null,pin=null;
	Connection con;
	HttpSession session=req.getSession();
	uname=(String)session.getAttribute("k");
	firstname=req.getParameter("firstname");
	lastname=req.getParameter("lastname");
	phone=req.getParameter("phone");
	state=req.getParameter("state");
	city=req.getParameter("city");
	pin=req.getParameter("pin");
	password=req.getParameter("password");
	try {
		con = connectDB.Connect();
		PreparedStatement st1=con.prepareStatement("update user_registation set firstname='"+firstname+"',lastname='"+lastname+"',mobileno='"+phone+"',state='"+state+"',lanmark='"+city+"',pin='"+pin+"',password='"+password+"' where email='"+uname+"'");
		st1.executeUpdate();
		res.sendRedirect("NewUser.jsp");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}
