package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Feedback;
import com.util.DBUtil;

/**
 * @author user
 * Feedback Details
 * View,Add,Update FeedBack
 */
public class FeedbackDAO {

	//Getting All the FeedBack To View
	public static List<Feedback> getAllFeedback()
	{
		List<Feedback> feedbackList = new ArrayList<Feedback>();
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			
			//Select all data from feedback table
			ResultSet rs= st.executeQuery("SELECT * FROM feedback");
			while(rs.next())
			{
				Feedback feedback = new Feedback(rs.getString("UserId"),rs.getString("Questions"),rs.getString("Answers"));
				//Adding Data to a list
				feedbackList.add(feedback);
			}
			
			// Closing the connection
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		// Returning the list
		return feedbackList;
	}
	
	
	// Updating the FeedBack
	public static int updateFeedback(Feedback feedback)
	{
		int status = 0;
		try
		{
			//Establishing the connection
			Connection conn = DBUtil.getConnection();
			
			// Update Details of the Answers based on Questions
			PreparedStatement ps= conn.prepareStatement("UPDATE feedback SET Answers=? WHERE Questions=?");
			ps.setString(1, feedback.getAnswers());
			ps.setString(2, feedback.getQuestions());
			
			//Executing the sql statement
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		//Returning Status (0/1)
		return status;
	}
}



