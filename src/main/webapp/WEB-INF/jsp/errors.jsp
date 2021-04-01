<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Display Population</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>

	<div class="container" align="center">
	<table width="100%" border="0">

            <tr>
                <td colspan="2" bgcolor="#FFA500" >
                    <h1 style="font-size:50px;" align="center">Exception Occured!!</h1>
                </td>
            </tr>
	
		
		</table>
		<br>
		<table>
		
		<form:form method="post" modelAttribute="exception"
			align="center">
			
			
			<div class="form-group">
					<c:forEach items="${exception}" var="exception">
						<p>${exception.statusCode}</p>
						<p>${exception.timestamp}</p>
						<p>${exception.message}</p>
						<p>${exception.description}</p>
					</c:forEach>
				
			</div>
			
			
			
			
		</form:form>
		</table>
	</div>
			<img src="https://i0.wp.com/techinfogain.com/wp-content/uploads/2016/08/aadhar.jpg?fit=300%2C200&ssl=1" alt="Paris" style="width:50%;">
	
</body>
</html>