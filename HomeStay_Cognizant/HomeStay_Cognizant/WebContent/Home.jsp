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
	height: 500px;
	text-align: center;
	color: white;
}

.containerB {
	padding: 0px;
	background-color: white;
	width: 100%;
	height: auto;
	padding-bottom: 7px;
}

.containerC {
	padding: 0px;
	background-color: white;
	width: 100%;
	height: 200px;
}

.containerD {
	padding: 0px;
	background-color: white;
	width: 100%;
	height: 200px;
}

.containerP {
	text-align: center;
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

.Signup {
	background-color: white;
	width: 50%;
	text-align: center;
	color: black;
	margin: auto;
	margin-top: 50px;
	padding: 7px;
	font-family: open-sans;
}

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
</style>
</head>


<body>
	<jsp:include page="Header.jsp" />

	<div class="navbar">
		<ul>
			<li><a href="#home">Home</a></li>
			<li><a href="#benefits">Benefits</a></li>
			<li><a href="#contact">Contact</a></li>
			<li><a href="#about">About</a></li>
			<li style="float: right;"><a href="/HomeStay/Registration.jsp">Register</a></li>
			<li style="float: right;"><a href="/HomeStay/Login.jsp">Sign
					In</a></li>
		</ul>

	</div>

	<div class="containerA">
		<div class="Welcome">
			<h1>Welcome Aboard!</h1>
			<p>The world is a bit more comfortable, when you know you're at
				home.</p>
		</div>

		<div class="Signup">
			<h3 style="color: grey;">Rent out your spare room</h3>
			<p>Earn extra income renting out your spare room to
				professionals, international students and tourists looking for
				nightly, weekly and monthly stays</p>
			<button type="button"
				onclick="window.location.href='/HomeStay/Registration.jsp';"
				class="registerbtn">Sign Up</button>
		</div>

	</div>

	<div class="containerB" id="benefits">
		<div
			style="color: white; text-align: center; background-color: #333; padding: 10px;">BENEFITS</div>
		<div class="containerP">
			<h3 style="color: #ff1a75;">True value</h3>
			<p>Offering quality and affordability, homestays are a great
				value accommodation option for short of long term stays.</p>
		</div>
		<div class="containerP">
			<h3 style="color: #ff1a75;">Real Homes</h3>
			<p>Every home has a host present and they do more than just hand
				over the keys. They'll help you settle into life in a new place.</p>
		</div>
		<div class="containerP">
			<h3 style="color: #ff1a75;">Real Connections</h3>
			<p>Offering quality and affordability, homestays are a great
				value accommodation option for short of long term</p>
		</div>
	</div>

	<div class="containerC" id="contact">
		<div
			style="color: white; text-align: center; background-color: #333; padding: 10px;">CONTACT</div>
	</div>


	<div class="containerD" id="about">
		<div
			style="color: white; text-align: center; background-color: #333; padding: 10px;">ABOUT</div>
	</div>

	<jsp:include page="Footer.jsp" />
</body>
</html>