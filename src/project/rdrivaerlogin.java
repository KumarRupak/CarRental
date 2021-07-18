package project;
import java.io.IOException;
import java.sql.*;
import java.util.LinkedList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnection.connectDB;
@WebServlet("/login2")
public class rdrivaerlogin extends HttpServlet {
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException{
		boolean value=false;
		String user=null,password=null;
		String dname=req.getParameter("dname");
		String pass=req.getParameter("pass");
		try{
			value=find_id(dname);
		} catch (SQLException e) {
			res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");
			e.printStackTrace();
		
		}
		try {
			value=find_id(dname);
			if(value==true)
			{
			Connection con=connectDB.Connect();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select *from driver_reg where email='"+dname+"'");
			while(rs.next())
			{
			user=rs.getString("email");
			password=rs.getString("password");
			}
			if(user.equals(dname) && password.equals(pass))
			{
				res.sendRedirect("driverhome.jsp?k="+user);
			}
			else
			{
				res.getWriter().println("<script>alert('Invalid User ID');"+ "window.location.href='index.jsp;'</script>");
			}
			
		}
			else
			{
				res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");
			}
		}
		catch (SQLException e) {
			res.getWriter().println("<script>alert('Invalid User Name Password');"+ "window.location.href='index.jsp;'</script>");
			e.printStackTrace();
		}
	}
			public boolean find_id(String s) throws SQLException
			{
			boolean flag=false;
			Connection conn=connectDB.Connect();
			LinkedList<String>  list=new LinkedList<>();
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery("select *from driver_reg");
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
