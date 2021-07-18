package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnection.connectDB;

@WebServlet("/forgot1")
public class forgot1 extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{	
		String var=null,answer1=null,uname=null;
		var=req.getParameter("forgot");
		if(var.equals("question"))
		{
		String val=null;
		Connection con;
		uname=req.getParameter("uname");
		try {
			con = connectDB.Connect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from user_registation where email='"+uname+"'");
		while(rs.next())
		{
		val=rs.getString("question");
		answer1=rs.getString("answer");
		}
		res.sendRedirect("forgot.jsp?k="+val);
		}
		
		 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
}
		else
		{
			uname=req.getParameter("uname");
			String password=null;
			String answer=null;
			Connection con;
			answer=req.getParameter("answer");
			password=req.getParameter("password");
			try {
				con = connectDB.Connect();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from user_registation where email='"+uname+"'");
				while(rs.next())
				{
				answer1=rs.getString("answer");
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
			if(answer1.equals(answer))
			{
				try {
					
					con = connectDB.Connect();
					PreparedStatement st1=con.prepareStatement("update user_registation set password='"+password+"' where email='"+uname+"'");
					st1.executeUpdate();
					res.sendRedirect("NewUser.jsp");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					
				}
				finally
				{
					System.out.println(answer);
					System.out.println(answer1);	
				}
				
			}
			
			else
			{
				res.getWriter().println("<html><body bgcolor=red><hr><br><center><h2>... Wrong Answer...");
				res.getWriter().print("</h2></center></body></html>");
			}
			}
		
			
			
		
	}
}
