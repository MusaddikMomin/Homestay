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

.HomeStayTable, th, td {
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
	background: #f1f1f1;
}

.actionBtn {
	background-color: blue;
	background-image: linear-gradient(to right, #9933ff, #3333cc);
	color: white;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 49%;
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
<body>
	       

	<div class="containerB">
		<div class="container">
			<header>
				<h1>Bill</h1>
				           
				<address contenteditable>
					               
					<p>Name:</p>
					               
					<p>
						Contact Number:<br> Homestay Name:
					</p>
					                           
				</address>
				       
			</header>
			       

			<article>
				           
				<h1>Recipient</h1>
				           
				<address contenteditable>
					               
					<p>
						Homestay<br>
					</p>
					           
				</address>

				<table class="meta">
					               
					<tr>
						                   
						<th><span contenteditable>Invoice #</span></th>                  
						 
						<td><span contenteditable>101138</span></td>               
					</tr>
					               
					<tr>
						                   
						<th><span contenteditable>Date</span></th>                   
						<td><span contenteditable>1 jan 2022</span></td>               
					</tr>
					               
					<tr>
						                   
						<th><span contenteditable>Amount Due</span></th>                 
						 
						<td><span id="prefix" contenteditable>$</span><span>5900.00</span></td> 
						             
					</tr>
					 
				</table>

				<table class="inventory">
					               
					<thead>
						                   
						<tr>
							                       
							<th><span contenteditable>Homestay name</span></th>             
							         
							<th><span contenteditable>Description</span></th>               
							       
							<th><span contenteditable>Rate for 1 day</span></th>             
							         
							<th><span contenteditable>total days</span></th>                 
							     
							<th><span contenteditable>Price</span></th>                   
						</tr>
						               
					</thead>

					<tbody>
						                   
						<tr>
							                       
							<td><a class="cut">-</a><span contenteditable>xyz</span></td>   
							                   
							<td><span contenteditable>abc</span></td>                       
							<td><span data-prefix>$</span><span contenteditable>1000.00</span></td> 
							                     
							<td><span contenteditable>5</span></td>                       
							<td><span data-prefix>$</span><span>5000.00</span></td>         
							         
						</tr>
						               
					</tbody>

				</table>
				            <a class="add">+</a>           
				<table class="balance">
					               
					<tr>
						                   
						<th><span contenteditable>GST 18% </span></th>                   
						<td><span data-prefix>$</span><span contenteditable>900</span></td> 
						             
					</tr>
					               
					<tr>
						                   
						<th><span contenteditable>Total</span></th>                   
						<td><span data-prefix>$</span><span>5900.00</span></td>           
						   
					</tr>
					               
					<tr>
						                   
						<th><span contenteditable>Amount Paid</span></th>                 
						 
						<td><span data-prefix>$</span><span contenteditable>0.00</span></td> 
						             
					</tr>

					<tr>
						                   
						<th><span contenteditable>Balance Due</span></th>                 
						 
						<td><span data-prefix>$</span><span>5900.00</span></td>           
						   
					</tr>
					               
					<tr>
						                   
						<th><span contenteditable>Status</span></th>                   
						<td><span data-prefix></span><span>Unpaid</span></td>             
						 
					</tr>
					           
				</table>
				       
			</article>
			       
			<aside>
				           
				<h1>
					<span contenteditable>Additional Notes</span>
				</h1>
				           
				<div contenteditable>
					               
					<p>A finance charge of 1.5% will be made on unpaid balances
						after 10 days.</p>
					           
				</div>
				       
			</aside>
			   
</body>
</html>
</div>
</div>

<jsp:include page="Footer.jsp" />
</body>
</html>