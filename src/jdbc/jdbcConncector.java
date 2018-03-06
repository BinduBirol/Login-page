package jdbc;
import java.sql.*;

public class jdbcConncector {

	public Connection CONNECTION()throws SQLException{

		String URL="jdbc:mysql://localhost:3306/guiterclinic";
		String USERNAME="root";
		String PASS="";
		Connection CON = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			CON= DriverManager.getConnection(URL,USERNAME,PASS);
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		return CON;
	}
}
