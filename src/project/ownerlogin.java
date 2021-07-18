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

@WebServlet("/Login2")
public class ownerlogin extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{


		boolean value=false;
		String user = null,password = null;
		String uname=req.getParameter("uname");
		String pass=req.getParameter("password");
		try {
			value=find_id(uname);
		} catch (SQLException e) {
			res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");

		}
			try {
				value=find_id(uname);
				if(value==true)
				{
				Connection con=connectDB.Connect();
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery("select *from owner_reg where email='"+uname+"'");
				while(rs.next())
				{
				user=rs.getString("email");
				password=rs.getString("password");
				}
				if(user.equals(uname) && password.equals(pass))
				{
					res.sendRedirect("ownerhome.jsp?k="+uname);
				}
				else
				{
					res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");	
				}
				
			}
				else
				{
					res.getWriter().println("<script>alert('Invalid User ID');"+ "window.location.href='index.jsp;'</script>");
				}
			}
			catch (SQLException e) {
				res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");
			}
		
			}
	public boolean find_id(String s) throws SQLException
	{
	boolean flag=false;
	Connection conn=connectDB.Connect();
	LinkedList<String>  list=new LinkedList<>();
	Statement st=conn.createStatement();
	ResultSet rs=st.executeQuery("select *from owner_reg");
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
