<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Georgia;
	background-color: #ff1a75;
	scroll-behaviour: smooth;
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
	padding: 15px;
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
		<div class="container">
			<center>
				<h1>View Booking of Your Stay</h1>
			</center>
			<form>
				<h2></h2>
				<br /> <label>Select Home Stay:</label></b><br /> <select
					name="Homestay" id="homestay">
					<option value="select">Select</option>
					<option value="hs1">hen</option>
					<option value="hs2"></option>
					<option value="hs3"></option>
					<option value="hs4"></option>
				</select><br /> <label>Room No:</label></b><br /> <input type="text"
					name="roomNo" required><br />
				<br /> <label>Check-In:</label></b><br />
				<br /> <input type="date" name="checkIn" required><br />
				<br /> <label>Check-Out:</label></b><br />
				<br /> <input type="date" name="checkOut" required><br />
				<button type="submit">Book Stay</button>
				<button type="button">Reset</button>
				<br />
			</form>
		</div>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>