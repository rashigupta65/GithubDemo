<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// set initially button state hidden
		$("#btn").hide();
		
		$("#name").keyup(function(){
			if(validateName()){
				// if the email is validated
				// set input email border green
				$("#name").css("border","2px solid green");
				// and set label 
				$("#name1").html("<p class='text-success'>Validated</p>");
			}else{
				// if the email is not validated
				// set border red
				$("#name").css("border","2px solid red");
				$("#name1").html("<p class='text-danger'>Length should be between 7 to 18 char</p>");
			}
			buttonState();
		});
		
		
	});

	function buttonState(){
		if(validateName()){
			// if the both email and password are validate
			// then button should show visible
			$("#btn").show();
		}else{
			// if both email and pasword are not validated
			// button state should hidden
			$("#btn").hide();
		}
	}
	
	function validateName(){
		//get input password value
		var na=$("#name").val();
		// check it s length
		if(na.length > 3 && na.length < 18){
			return true;
		}else{
			return false;
		}

	}
</script>

<script type="text/javascript">
	$(function () {
		$("#name").keypress(function (e) {
			var keyCode = e.keyCode || e.which;
  
			$("#lblError").html("");
  
			//Regex for Valid Characters i.e. Alphabets and Numbers.
			var regex = /^[A-Za-z0-9]+$+' '/;
  
			//Validate TextBox value against the Regex.
			var isValid = regex.test(String.fromCharCode(keyCode));
			if (!isValid) {
				$("#lblError").html("Only Alphabets and Numbers allowed.");
			}
  
			return isValid;
			var pass=$("#name").val();
		// check it s length
		
		});
	});
	$(document).ready(function () {
            $('#btn').click(function (e) {
                var isValid = true;
                $('#name').each(function () {
                    if ($.trim($(this).val()) == '') {
                        isValid = false;
                        $(this).css({
                            "border": "1px solid red",
                            "background": "#FFCECE"
                        });
                    }
                    else {
                        $(this).css({
                            "border": "",
                            "background": ""
                        });
                    }
                });
                if (isValid == false)
                    e.preventDefault();
                
            });
        });
  </script>
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
                    <h1 style="font-size:50px;" align="center">Add State</h1>
                </td>
            </tr>
	
		
		</table>
		<br>
		<table>
		<form:form action="submitForm" method="post" modelAttribute="state"
			 align="center" onsubmit="return validate()">
			<div class="form-group">
				State Name:
				<form:input path="sname" id="name" required="true" placeholder="Name" />
				<span id="name1"></span>
			</div>
			<div class="form-group">
				Population
				<form:input path="population" required="true" placeholder="Population" />
			</div>
			<div class="form-group">
				<label for="title"><b>Country List:</b></label> <select id="cid"
					name="cid">
					<c:forEach items="${list}" var="country">
						<option name="cid" value="${country.cid}">${country.cname}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<button class="btn btn-primary btn-block" id="btn">Submit</button>
			</div>
		</form:form>
		</table>
	</div>
		<img src="https://i0.wp.com/techinfogain.com/wp-content/uploads/2016/08/aadhar.jpg?fit=300%2C200&ssl=1" alt="Paris" style="width:50%;">
	
</body>
</html>