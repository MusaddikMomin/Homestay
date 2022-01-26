package com.model;

public class UserRegistration {

	// Defining the variables
	private String fname;
	private String lname;
	private String DOB;
	private String Gender;
	private String ContactNumber;
	private String Email;
	private String UserCategory;
	private String UserId;
	private String password;

	// Getters And Setters
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getDOB() {
		return DOB;
	}

	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getContactNumber() {
		return ContactNumber;
	}

	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getUserCategory() {
		return UserCategory;
	}

	public void setUserCategory(String userCategory) {
		UserCategory = userCategory;
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		UserId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// Constructor Using the fields
	public UserRegistration(String fname, String lname, String dOB, String gender, String contactNumber, String email,
			String userCategory, String userId, String password) {
		super();
		this.fname = fname;
		this.lname = lname;
		DOB = dOB;
		Gender = gender;
		ContactNumber = contactNumber;
		Email = email;
		UserCategory = userCategory;
		UserId = userId;
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserRegistration [fname=" + fname + ", lname=" + lname + ", DOB=" + DOB + ", Gender=" + Gender
				+ ", ContactNumber=" + ContactNumber + ", Email=" + Email + ", UserCategory=" + UserCategory
				+ ", UserId=" + UserId + ", password=" + password + "]";
	}

	// Constructor Using the fields
	public UserRegistration(String userId, String password) {
		super();
		UserId = userId;
		this.password = password;
	}
}
