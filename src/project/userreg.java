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

@WebServlet("/submit")
public class userreg extends HttpServlet {
	
	private String email,lastname,firstname,mobileno,state,landmark,password,confirmpassword,aadhrno,pin,question,answer;

	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	firstname=req.getParameter("1stname");
	lastname=req.getParameter("lastname");
	email = req.getParameter("ma");
    mobileno=req.getParameter("mobileno");
	state=req.getParameter("state");
	landmark=req.getParameter("landmark");
	password=req.getParameter("password");
	confirmpassword=req.getParameter("confirmpassword");
	aadhrno=req.getParameter("aadhrno");
	pin=req.getParameter("pin");
	question=req.getParameter("question");
	answer=req.getParameter("answer");
	try {
		insert(firstname,lastname,email,mobileno,aadhrno,state,pin,landmark,password,question,answer);
		res.sendRedirect("NewUser.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		res.getWriter().print("<html bgcolor=red><center><h2>Some Internal Error Occures<br><br><a href=index.jsp>Click hear");
		res.getWriter().println("</a></h2></center></html>");
		e.printStackTrace();
	}
	}
	
	private void insert(String a,String b,String c,String d,String e,String f,String g,String h,String i,String j,String k) throws SQLException
	{
	Connection conn=connectDB.Connect();	
	String query="insert into user_registation(FIRSTNAME,LASTNAME,EMAIL,MOBILENO,AADHRNO,STATE,PIN,LANMARK,PASSWORD,QUESTION,ANSWER)values(?,?,?,?,?,?,?,?,?,?,?)";
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
	st.executeUpdate();
	}



}
