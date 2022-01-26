<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
  height: 25px;
}

.actionBtn:hover {
  opacity: 1;
}

.searchTextField{
	width: 100%;
  padding: 10px;
  margin: 5px 0 5px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
<jsp:include page="CustomerNavbar.jsp"/>

<div class="containerB">
<div class="container">

<h1> Search HomeStays</h1>

<div align="center" style="padding-top:25px;">
	<form action="SearchHomeStay.jsp">
		<label>Enter Location:</label>
		<input type="text" name="Location" size="25" class="searchTextField"/>
		<button class="actionBtn">Search</button>
	</form>
</div>

<hr>
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
		String address = request.getParameter("Location");
		if(address!= null)
		{
			HomeStay homestay = HomeStayDAO.getHomeStayByLoc(address);
			if (homestay!= null)
			{
				System.out.println(homestay.getAddress());
	%>
		<tr>
			<td><%=homestay.getHomeStay_Name()%></td>
			<td><%=homestay.getAddress()%></td>
			<td><%=homestay.getContact_Number()%></td>
			<td><%=homestay.getTotalNo_of_rooms()%></td>
			<td><%=homestay.getAvailable_facilities()%></td>
			<td><%=homestay.getDate_Available()%></td>
			<td><button class="actionBtn" onclick="location.href = 'SearchTour.jsp?HomeStay_Name=<%=homestay.getHomeStay_Name()%>';">Add Tour</button></td>
			<td><button class="actionBtn" onclick="location.href = 'BookHomeStay.jsp?HomeStay_Name=<%=homestay.getHomeStay_Name()%>';">Book</button></td>
		</tr>
		<%
}
			else{
%>
	<tr>
		<td colspan="6">No Records to Display</td>
	</tr>	
<%}
		}
		else{
			%>
			<tr>
		<td colspan="6">No Records to Display</td>
	</tr>
			<%
		}
		
			%>


	</table>
</div>
</div>	

<jsp:include page="Footer.jsp"/>
</body>
</html>