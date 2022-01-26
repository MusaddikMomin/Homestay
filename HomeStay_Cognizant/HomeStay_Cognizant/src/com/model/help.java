package com.model;

public class help {

	// Defining the variables
	private int RequestId;
	private String Date_of_ticket;
	private String issue;
	private String descriptions;
	private String comments;

	// Getters And Setters
	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}

	public String getDescriptions() {
		return descriptions;
	}

	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}

	public help(String issue, String descriptions) {
		super();
		this.issue = issue;
		this.descriptions = descriptions;
	}

	@Override
	public String toString() {
		return "help [issue=" + issue + ", descriptions " + descriptions + "]";
	}

	public int getRequestId() {
		return RequestId;
	}

	public void setRequestId(int requestId) {
		RequestId = requestId;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getDate_of_ticket() {
		return Date_of_ticket;
	}

	public void setDate_of_ticket(String date_of_ticket) {
		Date_of_ticket = date_of_ticket;
	}

	// Constructor Using the fields
	public help(int requestId, String date_of_ticket, String issue, String descriptions, String comments) {
		super();
		RequestId = requestId;
		Date_of_ticket = date_of_ticket;
		this.issue = issue;
		this.descriptions = descriptions;
		this.comments = comments;
	}

	// Constructor Using the fields
	public help(int requestId, String comments) {
		super();
		RequestId = requestId;
		this.comments = comments;
	}

}