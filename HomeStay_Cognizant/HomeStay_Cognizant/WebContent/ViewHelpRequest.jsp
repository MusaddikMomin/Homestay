<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.help"%>
<%@ page import="com.DAO.helpDAO"%>
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
	<jsp:include page="AdminNavbar.jsp" />

	<div class="containerB">
		<div class="container">

			<h1>Help Desk</h1>
			<table align="center" class="HomeStayTable">
				<thead>
					<tr>
						<th>Request Id</th>
						<th>Date of Ticket</th>
						<th>Issue</th>
						<th>Description</th>
						<th>comment</th>
						<th colspan="1">Actions</th>
					</tr>
				</thead>
				<%
			List<help> helpList = helpDAO.getAllHelp();
			for (help h : helpList) {
		%>
				<tr>
					<td><%=h.getRequestId()%></td>
					<td><%=h.getDate_of_ticket()%></td>
					<td><%=h.getIssue()%></td>
					<td><%=h.getDescriptions() %></td>
					<td><%=h.getComments()%></td>
					<td><button class="actionBtn"
							onclick="location.href = 'editHelp.jsp?RequestId=<%=h.getRequestId()%>';">Edit</button></td>

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