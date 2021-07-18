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

@WebServlet("/submit2")
public class ownerregistation extends HttpServlet {
	
	private String email=null,firstname=null,lastname=null,mobileno=null,aadharno=null,modelno=null,carno=null,carseats=null,carmileage=null,state=null,pin=null,landmark=null,password=null,confirmpassword=null,securityquestion=null,securityanswer=null,amount=null ;

	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
	firstname=req.getParameter("firstname");
	lastname=req.getParameter("lastname");
	email = req.getParameter("email");
    mobileno=req.getParameter("mobile");
	state=req.getParameter("state");
	landmark=req.getParameter("landmark");
	password=req.getParameter("password");
	confirmpassword=req.getParameter("confirmpassword");
	aadharno=req.getParameter("aadhr");
	pin=req.getParameter("pin");
	securityquestion=req.getParameter("sq");
	securityanswer=req.getParameter("answer");
	modelno=req.getParameter("carmodel");
	carno=req.getParameter("carno");
	carseats=req.getParameter("seats");
	carmileage=req.getParameter("mileage");
	confirmpassword=req.getParameter("confirmpassword");
	amount=req.getParameter("amount");
	
		try {
			insert(firstname,lastname,email,mobileno,aadharno,state,pin,landmark,modelno,carno,carseats,carmileage,"avaliable",password,securityquestion,securityanswer,amount);
			res.sendRedirect("ownerlogin.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO Auto-generated catch block
			res.getWriter().print("<html bgcolor=red><center><h2>Some Internal Error Occures<br><br><a href=index.jsp>Click hear");
			res.getWriter().println("</a></h2></center></html>");
		}
	
	}
	
	private void insert(String a,String b,String c,String d,String e,String f,String g,String h,String i,String j,String k,String l,String m,String n,String o,String p,String q) throws SQLException
	{
	Connection conn=connectDB.Connect();	
	String query="insert into owner_reg(FIRSTNAME,LASTNAME,EMAIL,MOBILENO,AADHARNO,STATE,PIN,LANDMARK,MODELNO,CARNO,CARSEATS,CARMILEAGE,AVALIABLE,PASSWORD,SECURITYQUESTION,SECURITYANSWER,AMOUNT)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
	st.setString(14,n);
	st.setString(15,o);
	st.setString(16,p);
	st.setString(17,q);
	st.executeUpdate();
	}



}
