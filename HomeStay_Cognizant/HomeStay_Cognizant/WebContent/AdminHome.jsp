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

.containerA {
	padding: 80px;
	background-color: white;
	background-image: url(image/homebg.png);
	background-size: 100% 100%;
	width: 100%;
	text-align: center;
	color: white;
}

.btn {
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	height: 50px;
}

.btn:hover {
	background-image: linear-gradient(to right, pink, #3333cc);
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<jsp:include page="AdminNavbar.jsp" />

	<div class="containerA">
		<div class="Welcome">
			<h1>Welcome Admin!</h1>
			<p>The world is a bit more comfortable, when you know you're at
				home.</p>
		</div>

		<div class="objects" style="padding: 40px;">
			<table style="margin: auto;">
				<tr>

					<td><button class="btn"
							onclick="window.location.href='/HomeStay/ViewHelpRequest.jsp';">View
							Help Requests</button></td>
					<td><button class="btn"
							onclick="window.location.href='/HomeStay/AddFeedback.jsp';">Add
							Feedback Questions</button></td>
					<td><button class="btn"
							onclick="window.location.href='/HomeStay/ViewFeedback.jsp';">View
							Feedback</button></td>

				</tr>
			</table>
		</div>


	</div>

	<jsp:include page="Footer.jsp" />
</body>
</html>