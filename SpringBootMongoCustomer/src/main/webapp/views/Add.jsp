<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Boot App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
	div{
		text-align: center;
	}
	table,th,td{
		margin-left: auto;
		margin-right: auto;
	}
</style>
</head>
<body>
	<div class="container pt-3">
		<h1>Add Customer</h1>
		<form action="addCust">
			<div class="form-group">
				<table>
					<tr>
						<td>Enter Customer First Name</td>
					 	<td><input type="text" name="fname" class="form-control" required="required"></td>
					</tr>	
					<tr>
						<td>Enter Customer Middle Name</td>
					 	<td><input type="text" name="mname" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer Last Name</td>
					 	<td><input type="text" name="ltname" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer City</td>
					 	<td><input type="text" name="city" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer Mobile No.</td>
					 	<td><input type="text" name="mobileno" class="form-control" required="required"></td>
					</tr>	
					<tr>
						<td>Enter Customer Occupation</td>
					 	<td><input type="text" name="occupation" class="form-control" required="required"></td>
					</tr>	
					<tr>
						<td colspan="2">	
							<input type="submit" value="Add Customer">
							<input type="reset" value="Reset">
						</td>
					</tr>	
				</table>
			</div>
		</form> 		       
	</div>
</body>
</html>