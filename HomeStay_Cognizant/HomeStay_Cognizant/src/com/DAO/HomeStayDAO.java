package com.DAO;
import java.sql.*;
import java.util.*;
import com.util.DBUtil;
import com.model.HomeStay;

/**
 * @author user
 * Class To Implement Operations On HomeStay
 * Function Like - Adding HomeStay,Updating HomeStay,Searching HomeStay,View HomeStay,Delete HomeStay
 * 
 */
public class HomeStayDAO {
	
	//Getting List of All the HomeStay Available
	public static List<HomeStay> getAllHomeStay()
	{
		List<HomeStay> homeStayList = new ArrayList<HomeStay>();
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			
			//Select All Data from HomeStay Table
			ResultSet rs= st.executeQuery("SELECT * FROM HomeStay");
			while(rs.next())
			{
				
				//Fetching Data to HomeStay Object
				HomeStay homestay = new HomeStay(rs.getString("HomeStay_Name"),rs.getString("Address"),rs.getLong("Contact_Number"),rs.getInt("TotalNo_of_rooms"),rs.getString("Available_Facilities"),rs.getString("Date_Available"));
				homeStayList.add(homestay);
			}
			
			//Closing the connection
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return homeStayList;
	}
	
	
	//Getting All The HomeStay Based On The Name Passed
	public static HomeStay getHomeStayByName(String HomeStay_Name)
	{
		HomeStay homestay = null;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Selecting All The HomeStay Which Are Having HomeStay Name Selected in the jsp
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM homestay WHERE HomeStay_Name = ?");
			ps.setString(1, HomeStay_Name);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next())
			{
				//Adding the data to homestay object
			homestay = new HomeStay(rs.getString("HomeStay_Name"),rs.getString("Address"),rs.getLong("Contact_Number"),rs.getInt("TotalNo_of_rooms"),rs.getString("Available_Facilities"),rs.getString("Date_Available"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return homestay;
	}
	
	//Adding the HomeStay
	public static int addHomeStay(HomeStay homestay)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Inserting Values to the homestay Table 
			PreparedStatement ps= conn.prepareStatement("INSERT INTO homestay VALUES(?,?,?,?,?,?)");
			ps.setString(1, homestay.getHomeStay_Name());
			ps.setString(2, homestay.getAddress());
			ps.setLong(3, homestay.getContact_Number());
			ps.setInt(4, homestay.getTotalNo_of_rooms());
			ps.setString(5, homestay.getAvailable_facilities());
			ps.setString(6, homestay.getDate_Available());
			
			//Executing the Sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//Returning the Status 0/1 
		return status;
	}
	
	
	//Updating the HomeStay Details after Editing 
	public static int updateHomeStay(HomeStay homestay)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Updating the homestay attributes of selected name
			PreparedStatement ps= conn.prepareStatement("UPDATE homestay SET Address=?, Contact_Number=? , TotalNo_of_rooms=?, Available_Facilities=?, Date_Available=? WHERE HomeStay_Name=?");
			ps.setString(1, homestay.getAddress());
			ps.setLong(2, homestay.getContact_Number());
			ps.setInt(3, homestay.getTotalNo_of_rooms());
			ps.setString(4, homestay.getAvailable_facilities());
			ps.setString(5, homestay.getDate_Available());
			ps.setString(6, homestay.getHomeStay_Name());
			
			//Executing the sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//returning the Status
		return status;
	}
	
	
	//Delete the Selected HomeStay 
	public static int deleteHomeStay(String HomeStay_Name)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Deleting According to the homestay Name
			PreparedStatement ps= conn.prepareStatement("DELETE FROM homestay where HomeStay_Name = ?");
			ps.setString(1, HomeStay_Name);
			
			//Executing the sql statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	//Searching the HomeStay Based on the location
	public static HomeStay getHomeStayByLoc(String address)
	{
		HomeStay homestay = null;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			//Selecting all the data based on the address
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM homestay WHERE Address = ?");
			ps.setString(1, address);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				//Adding Data to HomeStay Object
			homestay = new HomeStay(rs.getString("HomeStay_Name"),rs.getString("Address"),rs.getLong("Contact_Number"),rs.getInt("TotalNo_of_rooms"),rs.getString("Available_Facilities"),rs.getString("Date_Available"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return homestay;
	}
}