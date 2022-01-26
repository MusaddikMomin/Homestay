<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
ul {
	list-style-type: none;
	font-family: Georgia;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: white;
}

li {
	float: left;
}

li a {
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: blue;
	color: white;
}
</style>
</head>
<body>
	<div class="navbar">
		<ul>
			<li><a href="/HomeStay/CustomerHome.jsp">Home</a></li>
			<li><a href="/HomeStay/SearchHomeStay.jsp">Search Stay</a></li>
			<li><a href="/HomeStay/ViewTourC.jsp">View Tour Package</a></li>
			<li><a href="/HomeStay/BookStay.jsp">Book Stay</a></li>
			<li><a href="/HomeStay/HelpB.jsp">Help</a></li>
			<li><a href="/HomeStay/HelpReportB.jsp">Help Report</a></li>
			<li style="float: right;"><a href="/HomeStay/logoff.jsp">Log
					Off</a></li>
			<li style="float: right;"><a href="/HomeStay/ForgotPass.jsp">Password
					Reset</a></li>
			<li style="float: right;"><a href="/HomeStay/Feedback.jsp">Feedback</a></li>
		</ul>
	</div>

</body>
</html>