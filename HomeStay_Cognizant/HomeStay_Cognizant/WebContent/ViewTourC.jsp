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
html, body {
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

.actionBtn {
	background-color: blue;
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.actionBtn:hover {
	opacity: 1;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<jsp:include page="CustomerNavbar.jsp" />

	<div class="containerB">
		<div class="container">

			<h1>Tour Packages</h1>
			<table align="center" class="HomeStayTable">
				<thead>
					<tr>
						<th>HomeStay Name</th>
						<th>Contact Number</th>
						<th>No of Days</th>
						<th>Destination</th>
						<th>Price</th>
						<th>Available Facilities</th>
						<th colspan="1">Actions</th>
					</tr>
				</thead>
				<%
			List<Tour> TourList = TourDAO.getAllTour();
			for (Tour t : TourList) {
		%>
				<tr>
					<td><%=t.getHomeStay_Name()%></td>
					<td><%=t.getContact_Number()%></td>
					<td><%=t.getNo_of_Days()%></td>
					<td><%=t.getDestination()%></td>
					<td><%=t.getPrice()%></td>
					<td><%=t.getAvailable_facilities()%></td>
					<td><button class="actionBtn"
							onclick="location.href = 'BookTour.jsp?HomeStay_Name=<%=t.getHomeStay_Name()%>';">Book</button></td>
				</tr>

				<%
}
%>
			</table>
		</div>
	</div>

	<jsp:include page="Footer.jsp" />
</body>
</html>