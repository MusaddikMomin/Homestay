<%@page import="com.DAO.TourDAO"%>
<%@page import="com.model.Tour"%>

<%
	String HomeStay_Name = request.getParameter("HomeStay_Name");

int status = TourDAO.deleteTour(HomeStay_Name);
if (status > 0) {
	response.sendRedirect("ViewTour.jsp");
} else {
	response.sendRedirect("error.jsp");
}
%>