package com.model;

public class Tour {

	// Defining the variables
	String HomeStay_Name;
	long Contact_Number;
	int No_of_Days;
	String Destination;
	float price;
	String Available_facilities;

	// Getters And Setters
	public String getHomeStay_Name() {
		return HomeStay_Name;
	}

	public void setHomeStay_Name(String homeStay_Name) {
		HomeStay_Name = homeStay_Name;
	}

	public long getContact_Number() {
		return Contact_Number;
	}

	public void setContact_Number(long contact_Number) {
		Contact_Number = contact_Number;
	}

	public int getNo_of_Days() {
		return No_of_Days;
	}

	public void setNo_of_Days(int no_of_Days) {
		No_of_Days = no_of_Days;
	}

	public String getAvailable_facilities() {
		return Available_facilities;
	}

	public void setAvailable_facilities(String available_facilities) {
		Available_facilities = available_facilities;
	}

	public String getDestination() {
		return Destination;
	}

	public void setDestination(String destination) {
		Destination = destination;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Tour [HomeStay_Name=" + HomeStay_Name + ", Contact_Number=" + Contact_Number + ", No_of_Days="
				+ No_of_Days + ", Available_facilities=" + Available_facilities + ", Destination=" + Destination
				+ ", price=" + price + "]";
	}

	// Constructor Using the fields
	public Tour(String homeStay_Name, long contact_Number, int no_of_Days, String destination, float price,
			String available_facilities) {
		super();
		HomeStay_Name = homeStay_Name;
		Contact_Number = contact_Number;
		No_of_Days = no_of_Days;
		Destination = destination;
		this.price = price;
		Available_facilities = available_facilities;
	}

}
