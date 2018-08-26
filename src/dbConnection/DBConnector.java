package dbConnection;

import java.sql.*;

//db connection class
public class DBConnector {
	Connection con;
	String url;
//	private static DBConnector connection;
	
	public Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch(Exception e) {
			System.out.println(e);
		}
//		
		try {
			this.url = "jdbc:mysql://localhost:3306/sportsms";
			this.con = (Connection)DriverManager.getConnection(this.url, "root", "");
			System.out.println("Connected");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return this.con;
	}
}
