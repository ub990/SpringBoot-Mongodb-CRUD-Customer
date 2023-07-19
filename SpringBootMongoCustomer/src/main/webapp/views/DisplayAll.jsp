<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring Boot App</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
    		h1{
                font-size: 35px;
            }
            table{
                margin-right: auto;
                margin-left: auto;
            }
</style>
</head>
<body>
	<div style="text-align: center; font-size: 20px;">
         <h1>All Customer</h1>
            <table  class="table table-bordered table-str">
                	<tr>
                		<th>Customer ID</th>
                		<th>Customer First Name</th>
                		<th>Customer Middle Name</th>
                		<th>Customer Last Name</th>
						<th>Customer City</th>	
                		<th>Customer Mobile No.</th>
                		<th>Customer Occupation</th>
                	
                	</tr>
                	<c:forEach var="cust" items="${CustList}">
		             <tr>
		                        <td> ${cust.getCustid()} </td>
		                        <td> ${cust.getFname()} </td>
		                        <td> ${cust.getMname()} </td>
		                        <td> ${cust.getLtname()} </td>
		                        <td> ${cust.getCity()} </td>
		                        <td> ${cust.getMobileno()} </td>
		                        <td> ${cust.getOccupation()} </td>
		                       
		                 
		            </tr>
                   </c:forEach>
                   <tr style="text-align: center;">
                            <h1 style = "text-align: center;"><a href="menu">Click here to go to menu</a></h1>
                    </tr>
           </table>   
    </div>
</body>
</html>