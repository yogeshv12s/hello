<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Shopping Mall</title>

	<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
	a{
		color: gray;
	}
	.navbar-dark .navbar-nav .nav-link {
    color: black;
	}
</style>
</head>
<body style="background: aquamarine;">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: red">
			<div style="font-weight:bold; margin-right:100px;">
				 <h2 class="navbar-brand">SHOPPING MALL</h2>
			</div>
			<ul class="navbar-nav">
				<li><a href="home.jsp"
					class="nav-link">Home</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="customerIndex.jsp"
					class="nav-link">Customer</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="employeeIndex.jsp"
					class="nav-link">Employee</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="itemIndex.jsp"
					class="nav-link">Item</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="mallIndex.jsp"
					class="nav-link">Mall</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="malladminIndex.jsp"
					class="nav-link">MallAdmin</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="orderdetailsIndex.jsp"
					class="nav-link">OrderDetails</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="customerIndex.jsp"
					class="nav-link">Shop</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="ownerIndex.jsp"
					class="nav-link">Owner</a></li>
			</ul>
			<ul class="navbar-nav navbar-collapse justify-content-end">
				<li><a href="index.jsp"
					class="nav-link">Logout</a></li>
			</ul>
		</nav>
	</header>
	<center>
        <h4 style="font-family: Times New Roman; margin-top: 2%;">
		<div class="container">
			<a href="customer?action=new" class="btn btn-info">Add New Customer</a>
		</div>       	
        </h4>
        <hr>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <h2>List of Customers</h2>
            <br>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Order</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="customer" items="${listCustomer}">
                <tr>
                    <td><c:out value="${customer.id}" /></td>
                    <td><c:out value="${customer.name}" /></td>
                    <td><c:out value="${customer.orders}" /></td>
                    <td><c:out value="${customer.phone}" /></td>
                    <td><c:out value="${customer.email}" /></td>
                    <td><c:out value="${customer.adress}" /></td>
                    <td>
                    	<button class="btn btn-success"><a style="color:gray;" href="customer?action=edit&id=<c:out value='${customer.id}' />">Edit</a></button>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<button class="btn btn-danger"><a style="color:gray;" href="customer?action=delete&id=<c:out value='${customer.id}' />" onclick="return confirm('Do you want to delete?')">Delete</a></button>                
                 </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
    <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
                       
                 