package com.model;

public class HomeStay {

	// Defining the variables
	String HomeStay_Name;
	String Address;
	long Contact_Number;
	int TotalNo_of_rooms;
	String Available_facilities;
	String Date_Available;

	// Getters And Setters
	public String getHomeStay_Name() {
		return HomeStay_Name;
	}

	public void setHomeStay_Name(String homeStay_Name) {
		HomeStay_Name = homeStay_Name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public long getContact_Number() {
		return Contact_Number;
	}

	public void setContact_Number(long contact_Number) {
		Contact_Number = contact_Number;
	}

	public int getTotalNo_of_rooms() {
		return TotalNo_of_rooms;
	}

	public void setTotalNo_of_rooms(int totalno_of_rooms) {
		TotalNo_of_rooms = totalno_of_rooms;
	}

	public String getAvailable_facilities() {
		return Available_facilities;
	}

	public void setAvailable_facilities(String available_facilities) {
		Available_facilities = available_facilities;
	}

	// Constructor Using the fields
	public HomeStay(String homeStay_Name, String address, long contact_Number, int totalno_of_rooms,
			String available_facilities, String date_available) {
		super();
		HomeStay_Name = homeStay_Name;
		Address = address;
		Contact_Number = contact_Number;
		TotalNo_of_rooms = totalno_of_rooms;
		Available_facilities = available_facilities;
		Date_Available = date_available;
	}

	public String getDate_Available() {
		return Date_Available;
	}

	public void setDate_Available(String date_Available) {
		Date_Available = date_Available;
	}

	@Override
	public String toString() {
		return "HomeStay [HomeStay_Name=" + HomeStay_Name + ", Address=" + Address + ", Contact_Number="
				+ Contact_Number + ", TotalNo_of_rooms=" + TotalNo_of_rooms + ", Available_facilities="
				+ Available_facilities + ", Date_Available=" + Date_Available + ", getHomeStay_Name()="
				+ getHomeStay_Name() + ", getAddress()=" + getAddress() + ", getContact_Number()=" + getContact_Number()
				+ ", getTotalNo_of_rooms()=" + getTotalNo_of_rooms() + ", getAvailable_facilities()="
				+ getAvailable_facilities() + ", getDate_Available()=" + getDate_Available() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}
