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
</style>
</head>
<body>
	<div>
		<h2>Customer menu</h2>
		<a href="/add" class="btn btn-primary">Add Customer</a>
		<a href="/delete" class="btn btn-primary">Delete Customer</a>
		<a href="/update" class="btn btn-primary">Update Customer</a>
		<a href="/display" class="btn btn-primary">Display Customer</a>
		<a href="/displayAll" class="btn btn-primary">Display All Customer</a>
	</div>
</body>	
</html>