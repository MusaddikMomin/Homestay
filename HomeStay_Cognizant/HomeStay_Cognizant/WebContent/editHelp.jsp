<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.helpDAO"%>
<%@page import="com.model.help"%>
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
	<jsp:include page="AdminNavbar.jsp" />

	<% int RequestId = Integer.parseInt(request.getParameter("RequestId"));
	help help = helpDAO.getHelpById(RequestId);
%>

	<div class="containerB">

		<div class="container">
			<h1>Edit Help Details</h1>

			<form action="processEditHelp.jsp" method="post" align="center">
				<table class="HomeStayTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Help Details</th>
						</tr>
					</thead>
					<tr>
						<td>RequestId</td>
						<td><input type="text" name="RequestId" size="20"
							value="<%=RequestId%>" readonly /></td>
					</tr>
					<tr>
						<td>Date of Ticket</td>
						<td><input type="text" name="Date_of_Ticket" size="20"
							value="<%=help.getDate_of_ticket()%>" readonly /></td>
					</tr>
					<tr>
						<td>Issue</td>
						<td><input type="text" name="Issue" size="20"
							value="<%=help.getIssue()%>" readonly /></td>
					</tr>
					<tr>
						<td>Descriptions</td>
						<td><input type="text" name="Descriptions" size="20"
							value="<%=help.getDescriptions()%>" readonly /></td>
					</tr>
					<tr>
						<td>Comments</td>
						<td><input type="text" name="comments" size="20"
							value="<%=help.getComments()%>" /></td>
					</tr>

				</table>
				<button type="submit" class="actionBtn">MODIFY</button>
				<br>
				<button type="cancel" href="/HomeStay/Help.jsp" class="actionBtn">Cancel</button>
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>