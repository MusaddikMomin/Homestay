<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.TourDAO"%>
<%@page import="com.model.Tour"%>
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
	Tour tour = TourDAO.getTourByName(HomeStay_Name);
%>

	<div class="containerB">

		<div class="container">
			<h1>Edit Tour Details</h1>

			<form action="processEditTour.jsp" method="post" align="center">
				<table class="HomeStayTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Tour Details</th>
						</tr>
					</thead>
					<tr>
						<td>HomeStay Name</td>
						<td><input type="text" name="HomeStay_Name" size="20"
							value="<%=HomeStay_Name%>" readonly /></td>
					</tr>
					<tr>
						<td>Contact Number</td>
						<td><input type="text" name="Contact_Number" size="20"
							value="<%=tour.getContact_Number()%>" /></td>
					</tr>
					<tr>
						<td>No Of Days</td>
						<td><input type="text" name="No_of_Days" size="20"
							value="<%=tour.getNo_of_Days()%>" /></td>
					</tr>
					<tr>
						<td>Destination</td>
						<td><input type="text" name="Destination" size="20"
							value="<%=tour.getDestination()%>" /></td>
					</tr>
					<tr>
						<td>Price</td>
						<td><input type="text" name="Price" size="20"
							value="<%=tour.getPrice()%>" /></td>
					</tr>

					<tr>
						<td>Available Facilities</td>
						<td><input type="text" name="Available_facilities" size="20"
							value="<%=tour.getAvailable_facilities()%>" /></td>
					</tr>

				</table>
				<button type="submit" class="actionBtn">MODIFY</button>
				<br>
				<button type="cancel" href="/HomeStay/ViewTour" class="actionBtn">Cancel</button>
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>