package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Tour;
import com.util.DBUtil;

/**
 * @author user
 * Tour Package Features
 * Add /View / Update / Delete/ Book
 */
public class TourDAO {

	// Viewing All the tour Details
	public static List<Tour> getAllTour()
	{
		List<Tour> TourList = new ArrayList<Tour>();
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			
			// Selecting All Data from tour_package Table
			ResultSet rs= st.executeQuery("SELECT * FROM tour_package");
			while(rs.next())
			{
				Tour tour = new Tour(rs.getString("HomeStay_Name"),rs.getLong("Contact_Number"),rs.getInt("No_of_Days"),rs.getString("Destination"),rs.getFloat("price"),rs.getString("Available_facilities"));
				//Adding Data to Tour List
				TourList.add(tour);
			}
			
			//closing the connection
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return TourList;
	}
	
	
	// Getting Tour By Name
	public static Tour getTourByName(String homeStay_Name)
	{
		Tour tour = null;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Selecting Tour Based On HomeStay Name
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM tour_package WHERE HomeStay_Name = ?");
			ps.setString(1, homeStay_Name);
			
			//Executing the sql Statement
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				// Adding data to tour object
			tour = new Tour(rs.getString("HomeStay_Name"),rs.getLong("Contact_Number"),rs.getInt("No_of_Days"),rs.getString("Destination"),rs.getFloat("price"),rs.getString("Available_Facilities"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		//Returning the object
		return tour;
	}
	
	public static int addTour(Tour tour)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Inserting Data into tour_package table
			PreparedStatement ps= conn.prepareStatement("INSERT INTO tour_package VALUES(?,?,?,?,?,?,?)");
			ps.setString(1, tour.getHomeStay_Name());
			ps.setLong(2, tour.getContact_Number());
			ps.setInt(3, tour.getNo_of_Days());
			ps.setString(4, tour.getDestination());
			ps.setFloat(5, tour.getPrice());
			ps.setString(6, tour.getAvailable_facilities());
			ps.setString(7, "Available");
			
			//Executing the sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	// Updating the Tour Package
	public static int updateTour(Tour tour)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Updating details of tour package
			PreparedStatement ps= conn.prepareStatement("UPDATE tour_package SET Contact_Number=? , No_of_Days=?,Destination=?,price=?, Available_facilities=? WHERE HomeStay_Name=?");
			ps.setLong(1, tour.getContact_Number());
			ps.setInt(2, tour.getNo_of_Days());
			ps.setString(3, tour.getDestination());
			ps.setFloat(4, tour.getPrice());
			ps.setString(5, tour.getAvailable_facilities());
			ps.setString(6, tour.getHomeStay_Name());
			
			//Executing the sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	// Deleting the Tour Package
	public static int deleteTour(String HomeStay_Name)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Deleting Tour package Based on the Name Selected
			PreparedStatement ps= conn.prepareStatement("DELETE FROM tour_package where HomeStay_Name = ?");
			ps.setString(1, HomeStay_Name);
			
			//Executing the sql Statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}

