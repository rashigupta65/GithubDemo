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
				$('#state').html(s);
			}
		});
	});
	$('#state').on('change', function(){
		var sname = $(this).val();
		console.log(sname);
		$.ajax({
			type: 'GET',
			url: '/person/loadPop1/' + sname,
			data:{},
			dataType:'json',
			success: function(data) {
				var s = '    <table class="table center table-striped table-hover table-condensed table-bordered">';
				s += '<tr class="danger"><th>State Name</th><th>State Population</th><th>Update State</th></tr>';

				s += ' <tr class="success"><td>"' + data.sname + '"</td><td>"' + data.population + '"</td><td><a href="/state/updateState/'+data.sname+'">Update</a></td>';
				 
				//s += '<td id="update_state"><button onclick="updatefun(\'' + data.sname + '\',\'' + data.population + '\')" >Update state</button></td></tr></table>'
				
				$("#table1").html(s);
			}
			});
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
                    <h1 style="font-size:50px;" align="center">Display Population</h1>
                </td>
            </tr>
	
		
		</table>
		<br>
		<table>
		
		<form:form action="submitForm" method="post" modelAttribute="person"
			align="center">
			
			
			<div class="form-group">
				<label ><b>Country List:</b></label> <select id="cid"
					name="cid">
					<c:forEach items="${list}" var="country">
						<option name="cid" value="${country.cid}">${country.cname}</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<label ><b>State List:</b></label> <select id="state"
					name="sid">
					
				</select>
			</div>
			<div>
			<table>
			<tr>
                <td colspan="2" bgcolor="#FFA500" >
                    <h1 style="font-size:20px;" align="center">Population of State</h1>
                </td>
            </tr>
            </table>
            <br>
            
			<table class="table" id="table1">
			
			</table>
			</div>
		</form:form>
		</table>
	</div>
			<img src="https://i0.wp.com/techinfogain.com/wp-content/uploads/2016/08/aadhar.jpg?fit=300%2C200&ssl=1" alt="Paris" style="width:50%;">
	
</body>
</html>