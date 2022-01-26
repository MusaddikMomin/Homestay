package com.model;

public class Feedback {

	// Defining the variables
	private String UserId;
	private String Questions;
	private String Answers;

	// Getters And Setters
	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getQuestions() {
		return Questions;
	}

	public void setQuestions(String questions) {
		Questions = questions;
	}

	public String getAnswers() {
		return Answers;
	}

	public void setAnswers(String answers) {
		Answers = answers;
	}

	// Constructor Using the fields
	public Feedback(String userId, String questions, String answers) {
		super();
		UserId = userId;
		Questions = questions;
		Answers = answers;
	}

}