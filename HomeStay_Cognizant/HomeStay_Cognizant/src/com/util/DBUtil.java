package com.util;

import java.sql.*;

public class DBUtil {
	
	//Creating A connection
	public static Connection getConnection() {
		Connection conn = null;
		try {
			
			//Linking the jdbc driver
			Class.forName("com.mysql.jdbc.Driver");
			
			//Establishing connection ( url ,userid , pass)
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeStay2","root","system");
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
	// Closing the connection
	public static void closeConnection(Connection conn) {
		try {
			conn.close();
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	
}
