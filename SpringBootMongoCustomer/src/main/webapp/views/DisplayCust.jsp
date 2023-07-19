<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Boot App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
		h1{
                text-align:center;
                font-size: 35px;
       	}
        table{
                margin-right: auto;
                margin-left: auto;
      	}
      	td{
                padding: 3px;
     	} 
</style>
</head>
<body>
	<h1>${message }</h1>
                <table class="table table-bordered table-str"> 
                    <tr>
                		<th>Property</th>
                		<th>Saved data</th>
                	</tr>
                	<tr>
                        <td>Customer ID</td>
                        <td>${cust.custid}</td>
                    </tr>
                    <tr>
                        <td>Customer First Name</td>
                        <td>${cust.fname}</td>
                    </tr>
                    <tr>
                        <td>Customer Middle Name</td>
                        <td>${cust.mname}</td>
                    </tr>
                    <tr>
                        <td>Customer Last Name</td>
                        <td>${cust.ltname}</td>
                    </tr>
                    <tr>
                        <td>Customer City</td>
                        <td>${cust.city}</td>
                    </tr>
                    <tr>
                        <td>Customer Mobile No.</td>
                        <td>${cust.mobileno}</td>
                    </tr>
                    <tr>
                        <td>Customer Occupation</td>
                        <td>${cust.occupation}</td>
                    </tr>
                   
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <h1 style="text-align: center;"><a href="menu">Click here to go to menu</a></h1>
                        </td>
                    </tr>
                </table>
</body>
</html>