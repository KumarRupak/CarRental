package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnection.connectDB;

@WebServlet("/prof1")
public class profile extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{


		boolean value=false;
		String uname1 = null;
		uname1=req.getParameter("uname1");
		try {
			value=find_id1(uname1);
		} catch (SQLException e) {
			res.getWriter().println("<html><body bgcolor=red><hr><br><center><h2>...Error!!!...");
			res.getWriter().print("</h2></center></body></html>");

		}
		if(value==true)
		{
			res.sendRedirect("profilee.jsp");
		}
		else
		{
			res.sendRedirect("profile1.jsp");
		}
	}
		
	
	public boolean find_id1(String s) throws SQLException
	{
	boolean flag=false;
	Connection conn=connectDB.Connect();
	LinkedList<String>  list=new LinkedList<>();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select *from user_registation");
	while(rs.next())
	{
		list.add(rs.getString("email"));
	}
	for(String i:list)
	{
		if(i.equals(s))
		{
		flag=true;
		}
	}
	if(flag==true)
	{
		return true;
	}
	else
	{
		return false;
	}	

	}	
	
}
