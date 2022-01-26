package com.DAO;

import com.model.UserRegistration;
import com.util.DBUtil;
import java.sql.*;


/**
 * @author user
 * Registration Implimentation
 * Saving the data to the database
 */
public class UserRegistrationDAO {

	//Adding the New user after the registration
	public static int addUser(UserRegistration user) {
		int status = 0;
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Inserting the data to user table
			PreparedStatement ps = conn.prepareStatement("INSERT INTO User VALUES(?,?,?,?,?,?,?,?,?);");
			ps.setString(1, user.getFname());
			ps.setString(2, user.getLname());
			ps.setString(3, user.getDOB());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getContactNumber());
			ps.setString(6, user.getEmail());
			ps.setString(7, user.getUserCategory());
			ps.setString(8, user.getUserId());
			ps.setString(9, user.getPassword());
		
			//Executing the Update
			status = ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return status;
		
	}
		
	
}
