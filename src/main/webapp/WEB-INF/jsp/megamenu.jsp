<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
}

.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	width: 100%;
	left: 0;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content .header {
	background: red;
	padding: 16px;
	color: white;
}

.dropdown:hover .dropdown-content {
	display: block;
}

/* Create three equal columns that floats next to each other */
.column {
	float: left;
	width: 33.33%;
	padding: 10px;
	background-color: #ccc;
	height: 250px;
}

.column a {
	float: none;
	color: black;
	padding: 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.column a:hover {
	background-color: #ddd;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}
</style>
<style>
* {
  box-sizing: border-box;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Style the topnav links */
.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* On screens that are 600px wide or less, make the menu links stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
</style>
</head>
<body bg="#808080">
<div class="container" align="center">
	<form action="details" method="post" modelAttribute="country"
		align="center">
		<table width="100%" border="0">

            <tr>
                <td colspan="2" bgcolor="#FFA500" >
                    <h1 style="font-size:50px;">Adhaar Registration</h1>
                </td>
            </tr>
            
		<div class="navbar">
			<a href="https://en.wikipedia.org/wiki/Aadhaar">About Adhaar</a> <a href="https://dev.coverfox.com/aadhar-card/aadhar-form/">Guidelines</a>
			<div class="dropdown">
				<button class="dropbtn">
					Options <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<div class="header">
						<h2>Select</h2>
					</div>
					<div class="row">
						<div class="column">
							<h3>Add Details</h3>
							<a href="http://localhost:8080/country/details">Add Country</a> <a
								href="http://localhost:8080/state/details">Add State</a> <a
								href="http://localhost:8080/person/details">Add Adhaar Details</a>
						</div>
						<div class="column">
							<h3>Display Details</h3>
							<a href="http://localhost:8080/person/details1">Display
								Population of State</a>
						</div>
						<div class="column">
							<h3></h3>
							
						</div>
					</div>
				</div>
			</div>
		</div>
<div class="topnav">
  <a href="http://localhost:8080/home/view2">Link</a>
  <a href="#">Link</a>
  <a href="#">Link</a>
</div>
		
	</form>
	
            
	</table>
	<table>
	<tr>
               <img src="https://aadharcardsuid.com/media/img/post/AADHAR-Card-Official-Website.png" alt="" width="1300" height="600">
            </tr>
            </table>
            <table></table>
             <table></table>
              <table align="center" width="100%" border="0"><tr>
                <td colspan="2" bgcolor="#4169e1">
                   
                    <div class="footer" >
                        <p><strong>Copyright©mindtree</strong></p>
                        </div>
                  
                </td>
            </tr></table>
            
	</div>
</body>
</html>
