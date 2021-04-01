<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

 <style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>
<div class="container" align="center" bgcolor="#808080">

	
		<table width="100%" border="0">

            <tr>
                <td colspan="2" bgcolor="#FFA500" >
                    <h1 style="font-size:50px;" align="center">Add Country</h1>
                </td>
            </tr>
	
		
		</table>
		<br>
		<table>
		<form:form action="/state/saveState" method="post" modelAttribute="state"
			align="center" >
			<div class="form-group">
				<form:hidden path="sid" id="name" value="${state.sid}"></form:hidden>
			</div>
			<div class="form-group">
				State Name:
				<form:input path="sname" id="name" value="${state.sname}" required="true" placeholder="Name" ></form:input>
			</div>
			<div class="form-group">
				Population:
				<form:input type="text" path="population" id="pop" value="${state.population}" required="true" placeholder="Population" ></form:input>
			</div>
			<div class="form-group">
				<button class="btn btn-primary btn-block" id="btn">Submit</button>
			</div>
			<div class="form-group">
				<form:hidden path="cid" id="cname" value="${state.cid}"></form:hidden>
			</div>
		</form:form>
		</table>
	</div>
	<img src="https://i0.wp.com/techinfogain.com/wp-content/uploads/2016/08/aadhar.jpg?fit=300%2C200&ssl=1" alt="Paris" style="width:50%;">
</body>
</html>