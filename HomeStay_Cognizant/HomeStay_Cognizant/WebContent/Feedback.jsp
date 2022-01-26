<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.Feedback"%>
<%@ page import="com.DAO.FeedbackDAO"%>
<%@ page import="java.util.*"%>

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
}

.containerB {
	padding: 16px;
	background-color: #ccccb3;
	width: 100%;
	height: 100%;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

input[type=text] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

textarea {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.SubmitButton {
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}
</style>
</head>
<body>
	<jsp:include page="Header.jsp" />


	<div class="containerB">
		<form action="AddFeedbackAnswer.jsp" method="post">
			<div class="container">
				<h1>Feedback</h1>
				<p>Please fill in the form details below.</p>
				<hr>

				<label for userId>UserId</label> <input type="text"
					placeholder="Enter your User Id" name="userId" required>

				<%
			List<Feedback> FeedbackList = FeedbackDAO.getAllFeedback();
			for (Feedback f : FeedbackList) {
%>

				<label for="Answer" name="Questions"><b><%=f.getQuestions()%></b></label>
				<input type="text" placeholder="Enter Your Answer" name="Answer"
					required>
				<%} %>
				<hr>
				<button type="submit" class="SubmitButton">Submit</button>
			</div>
		</form>
	</div>
	<jsp:include page="Footer.jsp" />
</body>
</html>