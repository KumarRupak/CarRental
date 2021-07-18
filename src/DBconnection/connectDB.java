package DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectDB {
	

	public static Connection Connect() {
		 try
    	 {
    		 Class.forName("oracle.jdbc.driver.OracleDriver");
    		 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","rupak");
    		 return con;
    	 }
    	 catch(Exception e)
    	 {
    	   return null;
    	 }
	}

}
