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
			<li><a href="/HomeStay/AdminHome.jsp">Home</a></li>
			<li><a href="/HomeStay/ViewHelpRequest.jsp">View Help
					Request</a></li>
			<li><a href="/HomeStay/AddFeedback.jsp">Add Feedback
					Questions</a></li>
			<li><a href="/HomeStay/ViewFeedback.jsp">View Feedback</a></li>

			<li style="float: right;"><a href="/HomeStay/logoff.jsp">Log
					Off</a></li>
		</ul>
	</div>

</body>
</html>