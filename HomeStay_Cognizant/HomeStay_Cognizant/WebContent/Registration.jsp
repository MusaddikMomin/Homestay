<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.model.UserRegistration"%>
<%@ page import="com.DAO.UserRegistrationDAO"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Georgia;
	background-color: #ff1a75;
	top: 0;
	left: 0;
	right: 0;
}

html {
	top: 0;
	left: 0;
	right: 0;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	margin-top: auto;
	padding: 16px;
	background-color: white;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=date], input[type=email]
	{
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

select {
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
	width: 100%;
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

.center {
	width: 100%;
	border-spacing: auto;
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

.new {
	height: auto;
	color: red;
	text-align: center;
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
			<li><a href="/HomeStay/Home.jsp#about">About</a></li>
			<li style="float: right;"><a href="/HomeStay/Login.jsp">Sign
					In</a></li>
		</ul>
	</div>

	<div class="containerB">
		<form action="SecurityQue.jsp" method="POST"
			onsubmit="return checkforblank()">

			<div class="container">
				<h1>Register</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>
				<table class="center">
					<tr>
						<td><label for="First_Name"><b>First Name</b></label></td>
						<td><input type="text" placeholder="Enter First Name"
							name="First_Name" id="First_Name" required></td>
					</tr>
					<tr>
						<td><label for="Last_Name"><b>Last Name</b></label></td>
						<td><input type="text" placeholder="Enter Last Name"
							name="Last_Name" id="Last_Name" required></td>
					</tr>
					<tr>
						<td><label for="DOB"><b>DOB</b></label></td>
						<td><input type="date" name="DOB" id="DOB"><br>
						</td>
					</tr>
					<tr>
						<td><label for="Gender"><b>Gender</b></label></td>
						<td><input type="radio" name="Gender" id="Gender"
							value="Male">Male <input type="radio" name="Gender"
							id="Gender" value="Female">Female<br></td>
					</tr>
					<tr>
						<td><label for="Contact_Number"><b>Contact Number</b></label>
						</td>
						<td><input type="text" placeholder="Enter Contact Number"
							name="Contact_Number" id="Contact_Number" required></td>
					</tr>
					<tr>
						<td><label for="email"><b>Email</b></label></td>
						<td><input type="email" placeholder="Enter Email"
							name="email" id="email" required></td>
					</tr>
					<tr>
						<td><label for="User_Category"><b>User Category</b></label></td>
						<td><select name="User_Category" id="User_Category" required>
								<option value="Customer">Customer</option>
								<option value="Owner">Owner</option>
						</select> <br></td>
					</tr>
					<tr>
						<td><label for="User_Id"><b>User Id</b></label></td>
						<td><input type="text" placeholder="Enter User Id"
							name="User_Id" id="User_Id" required></td>
					</tr>
					<tr>
						<td><label for="psw"><b>Password</b></label></td>
						<td><input type="password" placeholder="Enter Password"
							name="psw" id="psw" required></td>
					</tr>
				</table>
				<button type="submit" class="registerbtn">Register</button>

				<% 
  String fname = request.getParameter("First_Name");
  String lname = request.getParameter("Last_Name");
  String dOB = request.getParameter("DOB");
  String gender = request.getParameter("Gender");
  String contactNumber = request.getParameter("Contact_Number");
  String email = request.getParameter("email");
  String userCategory = request.getParameter("User_Category");
  String userId = request.getParameter("User_Id");
  String password = request.getParameter("psw");
  
   UserRegistration user = new UserRegistration(fname,lname, dOB, gender,contactNumber,email, userCategory, userId,password);
   int status = UserRegistrationDAO.addUser(user);
	
	if (status > 0 ){
%>
				<div class="new">
					<p id="new">New user created successfully</p>
				</div>
				
			<% }%>

				<div class="container signin">
					<p>
						Already have an account? <a href="/HomeStay/Login.jsp">Sign in</a>.
					</p>
				</div>

			</div>
		</form>
	</div>

	<jsp:include page="Footer.jsp" />


	<script>
		function checkforblank() {
			if (document.form.First_Name.value == "") {
				alert("Please Enter Mandatory Fields");
				document.form.First_Name.style.borderColor = "red";

			}
		}
	</script>
</body>
</html>