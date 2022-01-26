<%@page import="com.DAO.HomeStayDAO"%>
<%@page import="com.model.HomeStay"%>
<%@page import="java.util.*"%>

<%

String homeStay_Name = request.getParameter("HomeStay_Name");
String address = request.getParameter("Address");
Long contact_Number = Long.parseLong(request.getParameter("Contact_Number"));
Integer totalno_of_rooms = Integer.parseInt(request.getParameter("TotalNo_of_rooms"));
String available_facilities = request.getParameter("Available_facilities");
String date_available = request.getParameter("Date_Available");

HomeStay homestay = new HomeStay(homeStay_Name,address,contact_Number,totalno_of_rooms,available_facilities,date_available);

int status = HomeStayDAO.addHomeStay(homestay);
if(status == 1)
{
	response.sendRedirect("ViewHomeStay.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}
%>