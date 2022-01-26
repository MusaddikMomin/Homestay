<%@page import="com.DAO.TourDAO"%>
<%@page import="com.model.Tour"%>

<%
	String homeStay_Name = request.getParameter("HomeStay_Name");
Long contact_Number = Long.parseLong(request.getParameter("Contact_Number"));
Integer no_of_Days = Integer.parseInt(request.getParameter("No_of_Days"));
String destination = request.getParameter("Destination");
Float price = Float.parseFloat(request.getParameter("Price"));
String available_facilities = request.getParameter("Available_facilities");

Tour tour = new Tour(homeStay_Name, contact_Number, no_of_Days, destination, price, available_facilities);

int status = TourDAO.updateTour(tour);

if (status > 0) {
	response.sendRedirect("ViewTour.jsp");
}
%>