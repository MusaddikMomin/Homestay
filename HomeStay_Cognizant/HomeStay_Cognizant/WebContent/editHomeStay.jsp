<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.HomeStayDAO"%>
<%@page import="com.model.HomeStay"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
	font-family: Georgia;
	background-color: #ff1a75;
	scroll-behaviour: smooth;
	height: 100%;
}

* {
	box-sizing: border-box;
}

.container {
	margin-top: auto;
	padding: 16px;
	background-color: white;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	height: 98%;
}

.containerB {
	padding: 16px;
	background-color: #ccccb3;
	width: 100%;
	height: 100%;
}

.HomeStayTable, th, td {
	border-collapse: collapse;
	border: 1px solid;
}

th {
	background-color: #f1f1f1;
}

input[type=text], input[type=date] {
	width: 90%;
	display: inline-block;
	border: none;
	margin: 5px;
	background: #f1f1f1;
}

.actionBtn {
	background-color: blue;
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	opacity: 0.9;
}

.actionBtn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<jsp:include page="OwnerNavbar.jsp" />

	<% String HomeStay_Name = request.getParameter("HomeStay_Name");
	HomeStay homestay = HomeStayDAO.getHomeStayByName(HomeStay_Name);
%>

	<div class="containerB">

		<div class="container">
			<h1>Edit HomeStay Details</h1>

			<form action="processEditHomeStay.jsp" method="post" align="center">
				<table class="HomeStayTable" align="center">
					<thead>
						<tr>
							<th colspan="2">HomeStay Details</th>
						</tr>
					</thead>
					<tr>
						<td>HomeStay Name</td>
						<td><input type="text" name="HomeStay_Name" size="20"
							value="<%=HomeStay_Name%>" readonly /></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="Address" size="20"
							value="<%=homestay.getAddress()%>" /></td>
					</tr>
					<tr>
						<td>Contact_Number</td>
						<td><input type="text" name="Contact_Number" size="20"
							value="<%=homestay.getContact_Number()%>" /></td>
					</tr>
					<tr>
						<td>Total No Of Rooms</td>
						<td><input type="text" name="TotalNo_of_rooms" size="20"
							value="<%=homestay.getTotalNo_of_rooms()%>" /></td>
					</tr>
					<tr>
						<td>Available Facilities</td>
						<td><input type="text" name="Available_facilities" size="20"
							value="<%=homestay.getAvailable_facilities()%>" /></td>
					</tr>
					<tr>
						<td>Date of Availability</td>
						<td><input type="date" name="Date_Available" size="20"
							value="<%=homestay.getDate_Available()%>" /></td>
					</tr>
				</table>
				<button type="submit" class="actionBtn">MODIFY</button>
				<br>
				<button type="cancel" href="/HomeStay/ViewHomeStay"
					class="actionBtn">Cancel</button>
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>