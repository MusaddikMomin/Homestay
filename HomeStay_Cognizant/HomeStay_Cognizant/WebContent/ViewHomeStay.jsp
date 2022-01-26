F<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.DAO.HomeStayDAO"%>
<%@page import="com.model.HomeStay"%>
<%@page import="java.util.*"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html, body {
  font-family: Georgia;
  background-color: #ff1a75; 
  scroll-behaviour:smooth;
  height:100%;
}

* {
  box-sizing: border-box;
}

.container {
  margin-top: auto;
  padding: 16px;
  background-color: white;
  width:80%;
  margin-left:auto;
  margin-right:auto;
  height:98%;
}

.containerB {
  padding: 16px;
  background-color: #ccccb3;
  width:100%;
  height:100%;
}

.HomeStayTable , th ,td{
	border-collapse: collapse;
	border:1px solid;
}

th{
background-color:#f1f1f1;
}

.actionBtn {
  background-color: blue;
  background-image: linear-gradient(to right, #9933ff , #3333cc);
  color: white;
  margin: 8px 0;
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
<jsp:include page="Header.jsp"/>
<jsp:include page="OwnerNavbar.jsp"/>

<div class="containerB">
<div class="container">

<h1> List of HomeStays</h1>
<table align="center" class="HomeStayTable">
		<thead>
			<tr>
				<th>HomeStay Name</th>
				<th>Address</th>
				<th>Contact_Number</th>
				<th>Total No of rooms</th>
				<th>Available Facilities</th>
				<th>Date of Availability</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		<%
			List<HomeStay> HomeStayList = HomeStayDAO.getAllHomeStay();
			for (HomeStay h : HomeStayList) {
		%>
		<tr>
			<td><%=h.getHomeStay_Name()%></td>
			<td><%=h.getAddress()%></td>
			<td><%=h.getContact_Number()%></td>
			<td><%= h.getTotalNo_of_rooms() %></td>
			<td><%=h.getAvailable_facilities()%></td>
			<td><%= h.getDate_Available() %></td>
			<td><button class="actionBtn" onclick="location.href = 'editHomeStay.jsp?HomeStay_Name=<%=h.getHomeStay_Name()%>';">Edit</button></td>
			<td><button class="actionBtn" onclick="location.href = 'processDeleteHomeStay.jsp?HomeStay_Name=<%=h.getHomeStay_Name()%>';">Delete</button></td>
		</tr>

		<%
}
%>
	</table>
	
		<button class="actionBtn" onclick="location.href = 'AddHomeStay.jsp';">Add Homestay</button>
</div>
</div>	

<jsp:include page="Footer.jsp"/>
</body>
</html>