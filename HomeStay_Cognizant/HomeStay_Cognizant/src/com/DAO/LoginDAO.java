package com.DAO;

import com.model.UserRegistration;
import com.util.DBUtil;
import java.sql.*;

/**
 * @author user
 * Login Implementation
 */
public class LoginDAO {

	// Checking Valid Credentials
	public static String isUserValid(UserRegistration user) {
		
		String role = null;
		
		try {	
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			Statement st = conn.createStatement();
			
			// Selecting the User Categories if user Id and Pass Matched
			ResultSet rs = st.executeQuery("SELECT User_category FROM user WHERE UserId = '"+ user.getUserId() +"' AND Pass = '"+ user.getPassword() +"'");
			
			while (rs.next()) {
			    role = rs.getString(1);
			}
			
			//Closing the connection
			DBUtil.closeConnection(conn);
		}
		catch(Exception e){
				e.printStackTrace();
			}
		
		//Returing the role value - Admin/Owner/Customer
			return role;
}
}