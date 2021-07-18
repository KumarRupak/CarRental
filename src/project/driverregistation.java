package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBconnection.connectDB;

@WebServlet("/submit1")
public class driverregistation extends HttpServlet {
	private String amount=null , email=null,firstname=null,lastname=null,mobileno=null,aadhrno=null,driving_licence=null,landmark=null,state=null,pin=null,password=null,confirmedpassword=null,securityquestion=null,securityanswer=null;
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		firstname=req.getParameter("1stname").toString();
		lastname=req.getParameter("lastname").toString();
	    mobileno=req.getParameter("mobileno").toString();
		state=req.getParameter("state").toString();
		landmark=req.getParameter("landmark").toString();
		password=req.getParameter("password").toString();
		aadhrno=req.getParameter("aadhrno").toString();
		pin=req.getParameter("pin").toString();
		securityquestion=req.getParameter("question").toString();
		securityanswer=req.getParameter("answer").toString();
		confirmedpassword=req.getParameter("confirmpassword").toString();
		email=req.getParameter("email");
		driving_licence=req.getParameter("dl").toString();
		amount=req.getParameter("amount");
		try {
			insert(firstname,lastname,email,mobileno,aadhrno,driving_licence,state,landmark,pin,password,securityquestion,securityanswer,amount,"avaliable");
			res.sendRedirect("driverlog.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			res.getWriter().print("<html bgcolor=blue><center><h2>Some Internal Error Occures<br><br><a href=index.jsp>Click hear");
			res.getWriter().println("</a></h2></center></html>");
		}
	}

	private void insert(String a,String b,String c,String d,String e,String f,String g,String h,String i,String j,String k,String l,String m,String n) throws SQLException
	{
	Connection conn=connectDB.Connect();	
	String query="insert into driver_reg(FIRSTNAME,LASTNAME,EMAIL,MOBILENO,AADHARNO,DRIVING_LICENCE,STATE,LANDMARK,PIN,PASSWORD,SECURITYQUESTION,SECURITYANSWER,AMOUNT,AVALIABLE)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement st=conn.prepareStatement(query);
	st.setString(1,a);
	st.setString(2,b);
	st.setString(3,c);
	st.setString(4,d);
	st.setString(5,e);
	st.setString(6,f);
	st.setString(7,g);
	st.setString(8,h);
	st.setString(9,i);
	st.setString(10,j);
	st.setString(11,k);
	st.setString(12,l);
	st.setString(13,m);
	st.setString(14, n);
	st.executeUpdate();
	}
}
