package com.DAO;

import com.model.help;
import com.util.DBUtil;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author user
 * Help Desk Implementations
 * Add/View/Update
 */

public class helpDAO {

	// Raising help Request
	public static int addHelp(help user) {
		int status = 0;
		try {
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Auto Populate The Date
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
			
			// Inserting the values to help table
			PreparedStatement ps = conn.prepareStatement("INSERT INTO help(Issue , Descriptions , Date_of_Ticket , comments) VALUES(?,?,?,?);");
			ps.setString(1, user.getIssue());
			ps.setString(2, user.getDescriptions());
			ps.setDate(3, sqlDate);
			ps.setString(4, "");
		
			// Executing the sql statement
			status = ps.executeUpdate();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		// returning the status(0/1)
		return status;
		
	}

	// Displaying the Help Request to Admin
	public static List<help> getAllHelp()
	{
		List<help> helpList = new ArrayList<help>();
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			
			//Selecting all the Data from help table
			ResultSet rs= st.executeQuery("SELECT * FROM help");
			while(rs.next())
			{
				help help = new help(rs.getInt("RequestId"),rs.getString("Date_of_Ticket"),rs.getString("Issue"),rs.getString("Descriptions"),rs.getString("comments"));
				// Adding data to helpList
				helpList.add(help);
			}
			
			// Closing the connection
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//Returning the list
		return helpList;
	}
	
	
	// Deleting the Data Based on RequestId
	public static int deleteHelp(int RequestId)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Deleting the content
			PreparedStatement ps= conn.prepareStatement("DELETE FROM help where RequestId = ?");
			ps.setInt(1, RequestId);
			
			//Executing the Sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	// Selecting Data As Per Request Id
	public static help getHelpById(int RequestId)
	{
		help help = null;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Select data on passing the request id
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM help WHERE RequestId = ?");
			ps.setInt(1, RequestId);
			
			// executing the sql statement
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				// adding data to help object
			help = new help(rs.getInt("RequestId"),rs.getString("Date_of_Ticket"),rs.getString("Issue"),rs.getString("Descriptions"),rs.getString("comments"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//Returning the help object
		return help;
	}
	
	
	// Updating the Comments (By Admin)
	public static int updateHelp(help help)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Updating Data Of the Selected Request Id
			PreparedStatement ps= conn.prepareStatement("UPDATE help SET comments=? WHERE RequestId=?");
			ps.setString(1, help.getComments());
			ps.setInt(2, help.getRequestId());
			
			//Executing the sql statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//returning the status 0/1
		return status;
	}
}

