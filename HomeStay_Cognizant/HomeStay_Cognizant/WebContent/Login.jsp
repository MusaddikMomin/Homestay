<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.UserRegistration"%>
<%@ page import="com.DAO.LoginDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body, html {
	font-family: Georgia;
	background-color: #ff1a75;
	height: 100%
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	margin-top: auto;
	padding: 80px;
	background-color: white;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 0px;
}

.containerB {
	margin-top: auto;
	background-color: white;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 0px;
	height: 100%;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: blue;
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 49%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}

#head {
	text-align: center;
	color: black;
	margin: auto;
}

.containerB {
	padding: 16px;
	background-color: #ccccb3;
	width: 100%;
	height: 100%;
}

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

	<jsp:include page="Header.jsp" />

	<div class="navbar">
		<ul>
			<li><a href="/HomeStay/Home.jsp">Home</a></li>
			<li><a href="/HomeStay/Home.jsp#benefits">Benefits</a></li>
			<li><a href="/HomeStay/Home.jsp#contact">Contact</a></li>
			<li><a href="/Home.jsp#about">About</a></li>
			<li style="float: right;"><a href="/HomeStay/Forgot.jsp">Forgot
					password</a></li>
			<li style="float: right;"><a href="/HomeStay/Registration.jsp">Register</a></li>
		</ul>
	</div>

	<div class="containerB">

		<form action="/HomeStay/Login.jsp" method="post">

			<div class="container">

				<h1 id="head">LOGIN</h1>

				<label for="User_Id"><b>User Id</b></label> <input type="text"
					placeholder="Enter User Id" name="User_Id"> <label
					for="psw"><b>Password</b></label> <input type="password"
					placeholder="Enter Password" name="psw">
				<button type="submit" class="registerbtn">Sign In</button>
				<button type="button"
					onclick="window.location.href='/HomeStay/Registration.jsp';"
					class="registerbtn">Register</button>
			</div>
		</form>
		<%
String userId = request.getParameter("User_Id");
String password = request.getParameter("psw");

UserRegistration user= new UserRegistration(userId,password);
String rol = LoginDAO.isUserValid(user);

if(rol != null){
	
	session.setAttribute("User_Id", userId);

	if(rol.equals("Admin")){
	response.sendRedirect("AdminHome.jsp");
	}

	else if(rol.equals("Owner")){
	response.sendRedirect("OwnerHome.jsp");
	}

	else if(rol.equals("Customer")){
	response.sendRedirect("CustomerHome.jsp");
	}
}
	%>

		<div class="containerC" style="background-color: #f1f1f1">
			<span class="User Id">Forgot <a href="ForgotUserId.jsp">User
					Id</a></span> <span class="pass">Forgot <a href="ForgotPass.jsp">Password</a></span>
		</div>


		<jsp:include page="Footer.jsp" />
</body>
</html>