<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<script type="text/javascript">
$(document).ready(function(){

	$('#cid').on('change', function(){
		
		var countryId = $(this).val();
		$.ajax({
			type: 'GET',
			url: '/person/loadStatesByCountry/' + countryId,
			data:{},
			dataType:'json',
			success: function(result) {
				var s = '';
				for(var i = 0; i < Object.keys(result).length; i++) {
					s += '<option value="' + result[i] + '">' + result[i] + '</option>';
				}
				$('#sid').html(s);
			}
		});
	});


	



});
</script>
<script type="text/javascript">
	function validate() {
		var h1 = document.getElementById("Reading");
		var h2 = document.getElementById("Writing");
		var h3 = document.getElementById("Swimming");
		var h4 = document.getElementById("Riding");
		var count = 0;
		if (h1.checked) {
			count = count + 1;
		}
		if (h2.checked) {
			count = count + 1;
		}
		if (h3.checked) {
			count = count + 1;
		}
		if (h4.checked) {
			count = count + 1;
		}
		if (count <= 1) {

			alert("Choose atleast two checkboxes!");
			return false;
		} else {
			return true;
		}
	}
</script>
<style>
img {
  display: block;
  margin-left: auto;
  margin-right: auto;

  align: center;
}
</style>
</head>
<body>
	<div class="container" align="center">
	<table width="100%" border="0">

            <tr>
                <td colspan="2" bgcolor="#FFA500" >
                    <h1 style="font-size:50px;" align="center">Add Person</h1>
                </td>
            </tr>
	
		
		</table>
		<br>
		<table> 
		
		<form:form action="submitForm" method="post" modelAttribute="person"
			align="center" onsubmit="return validate()" >
			<tr>
			<div class="form-group">
				<td>Person Name:</td><td></td>
				<td><form:input path="pname" id="name" required="true" placeholder="Name" /></td>
				<span id="name1"></span>
			</div>
			</tr>
			<tr><td>
			
			</td></tr>
			<tr>
			<div class="form-group">
				<td>Gender:</td><td></td><td> Male
				<form:radiobutton path="gender" name="radio" value="male"
					required="true" /></td></tr>
					<tr><td></td><td></td>
					<td>
				 Female
				<form:radiobutton path="gender" name="radio" value="female"
					required="true" /></td></tr>
					<tr><td></td><td></td>
					<td>
				 Others
				<form:radiobutton path="gender" name="radio" value="others"
					required="true" /></td></tr>
			</div>
				<tr>
			<div class="checkbox">
				<td>Hobbies:</td><td></td><td>Reading
				<form:checkbox path="hobbies" id="Reading" value="Reading"
					align="center" /></td></tr>
					<tr><td></td><td></td>
					<td>
				 Writing
				<form:checkbox path="hobbies" id="Writing" value="Writing"
					align="center" /></td></tr>
					<tr><td></td><td></td>
					<td>
				 Swimming
				<form:checkbox path="hobbies" id="Swimming" value="Swimming"
					align="center" /></td></tr>
					<tr><td></td><td></td>
					<td>
				 Riding
				<form:checkbox path="hobbies" id="Riding" value="Riding"
					align="center" /></td></tr>
			</div>
			<tr>
			<div class="form-group">
				<td><label for="title">Country List:</label></td><td></td><td> <select id="cid"
					name="cid">
					<c:forEach items="${list}" var="country">
						<option name="cid" value="${country.cid}">${country.cname}</option>
					</c:forEach>
				</select></td></tr>
			</div>
			<tr>
			<div class="form-group">
				<td><label for="title1">State List:(Select according to country)</label> </td><td></td>
				<td><select id="sid"
					name="sid">

				</select></td></td></tr>
					<tr><td></td>
					<td>
			</div>
			<div class="form-group">
				<button class="btn btn-primary btn-block" id="btn">Submit</button>
			</div>
		</form:form>
		</table>
				<img src="https://i0.wp.com/techinfogain.com/wp-content/uploads/2016/08/aadhar.jpg?fit=300%2C200&ssl=1" alt="Paris" style="width:50%;">
		
	</div>
</body>
</html>