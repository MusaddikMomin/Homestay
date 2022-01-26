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
		<center>
			<h1>Generate Home Stay Report</h1>
		</center>
		<div class="container">
			<form action="/HomeStay/ReportGen.jsp">
				<h2>Home Stay Report</h2>
				<br /> <input type="checkbox" id="bydate" name="bydate"> <label
					for="bydate">By Date</label><br> <label>Start
					Date(checked-in):</label> <input type="text" placeholder="Enter Start Date"
					name="startDate"><br> <label>End
					Date(checked-out):</label> <input type="text" placeholder="Enter End Date"
					name="endDate"><br />
				<br /> <input type="checkbox" id="byMonth" name="byMonth"> <label
					for="bydate">By Month</label><br> <label>Month:</label> <input
					type="text" placeholder="Enter Month" name="month"><br />
				<br /> <input type="checkbox" id="byYear" name="byYear"> <label
					for="bydate">By Year</label><br> <label>Year:</label> <input
					type="text" placeholder="Enter Year" name="year"><br />
				<br />
				<button type="submit">Submit</button>
				<br />
				<br />
				<!--<button type="submit">Generate Report</button>
            <button type="button"> Download as PDF</button><br/>-->
		</div>
		</form>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>