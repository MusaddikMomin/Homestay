<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

.inventory, th, td {
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
	margin: 10px;
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
			<h1>Adding Feedback Questions</h1>

			<table class="inventory" align="center">

				<thead>
					<tr>
						<th><span contenteditable>Que. No. </span></th>
						<th><span contenteditable>Description</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="cut">-</a><span contenteditable>1</span></td>
						<td><span contenteditable>Rate your Experience</span></td>
					</tr>
				</tbody>

			</table>

			<button class="actionBtn">Add +</button>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>