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
		<h1>Update Customer</h1>
		<form action="updateCust">
		<input name="deptno" type="hidden" value="${cust.custid}" >
			<div class="form-group">
				<table>
					<tr>
						<td>Customer ID</td>
                        <td colspan="2" style="text-align:center">${cust.custid}</td>
                    </tr>
					<tr>
                		<th>Property</th>
                		<th>Saved data</th>
                        <th>Update data</th>
                	</tr>
                    <tr>
						<td>Enter Customer First Name</td>
						<td>${cust.fname}</td>
					 	<td><input type="text" name="fname" class="form-control" required="required"></td>
					</tr>	
					<tr>
						<td>Enter Customer Middle Name</td>
						<td>${cust.mname}</td>
					 	<td><input type="text" name="mname" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer Last Name</td>
						<td>${cust.ltname}</td>
					 	<td><input type="text" name="ltname" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer City</td>
						<td>${cust.city}</td>
					 	<td><input type="text" name="city" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer Mobile No.</td>
						<td>${cust.mobileno}</td>
					 	<td><input type="text" name="mobileno" class="form-control" required="required"></td>
					</tr>
					<tr>
						<td>Enter Customer Occupation</td>
						<td>${cust.occupation}</td>
					 	<td><input type="text" name="occupation" class="form-control" required="required"></td>
					</tr>
					
					<tr>
						<td colspan="3">	
							<input type="submit" value="Update Department">
							<input type="reset" value="Reset">
						</td>
					</tr>	
				</table>
			</div>
		</form> 		       
	</div>
</body>
</html>