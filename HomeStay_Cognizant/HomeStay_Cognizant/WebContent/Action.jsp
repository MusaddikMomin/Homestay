<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.UserRegistration"%>
<%@ page import="com.DAO.LoginDAO"%>

<%
	String userId = request.getParameter("User_Id");
String password = request.getParameter("psw");

UserRegistration user = new UserRegistration(userId, password);
String rol = LoginDAO.isUserValid(user);

if (rol != null) {

	session.setAttribute("User_Id", userId);
	session.setMaxInactiveInterval(30);

	if (rol.equals("Admin")) {
		response.sendRedirect("AdminHome.jsp");
	}

	else if (rol.equals("Owner")) {
		response.sendRedirect("OwnerHome.jsp");
	}

	else if (rol.equals("Customer")) {
		response.sendRedirect("CustomerHome.jsp");
	}
}

else {
	response.sendRedirect("Login.jsp");
}
%>
