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
	<jsp:include page="OwnerNavbar.jsp" />

	<div class="containerB">
		<center>
			<h1>Generate Home Stay Report</h1>
		</center>
		<div class="container">
			<form>
				<h2>Home Stay Report</h2>
				<br />
				<table>
					<tr>
						<th>Guest</th>
						<th>Room</th>
						<th>Price</th>
						<th>Arrival</th>
						<th>Departure</th>
						<th>Nights</th>
						<th>Subtotal</th>
					</tr>
					<tr>
						<td>ahsb dsdc</td>
						<td>##@#@12</td>
						<td>$343</td>
						<td>23/3/21</td>
						<td>25/3/21</td>
						<td>2</td>
						<td>$343</td>

					</tr>
				</table>
				<button type="submit">Generate Report</button>

				<button type="button">Download as PDF</button>
			</form>
		</div>
	</div>

	<jsp:include page="Footer.jsp" />
</body>
</html>