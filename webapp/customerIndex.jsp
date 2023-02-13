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
	.navbar-dark .navbar-nav .nav-link {
    color: black;
	}
</style>
</head>
<body style="background: aquamarine;">

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: red">
			<div style="font-weight:bold; margin-right:50px;">
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
				<li><a href="orderdetails.Index.jsp"
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
			<a href="customer?action=list" class="btn btn-info">Display All Customers</a>
		</div>       	
        </h4>
        <hr>
	</center>
    <div align="center">
		<c:if test="${customer != null}">
			<form action="customer?action=update" method="post">
        </c:if>
        <c:if test="${customer == null}">
			<form action="customer?action=insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            	<h2>
            		<c:if test="${customer != null}">
            			Edit Customer
            		</c:if>
            		<c:if test="${customer == null}">
            			Add New Customer
            		</c:if>
            	</h2>
            <br>
        		<c:if test="${customer != null}">
        			<input type="hidden" name="id" value="<c:out value='${customer.id}' />" />
        		</c:if>            
            <tr>
                <th>Name</th>
                <td>
                	<input type="text" name="name" size="45"
                			value="<c:out value='${customer.name}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Order</th>
                <td>
                	<input type="text" name="orders" size="45"
                			value="<c:out value='${customer.orders}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>
                	<input type="text" name="phone" size="45"
                			value="<c:out value='${customer.phone}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Email</th>
                <td>
                	<input type="text" name="email" size="45"
                			value="<c:out value='${customer.email}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Address</th>
                <td>
					<input type="text" name="adress" size="45"
                			value="<c:out value='${customer.adress}' />"
                	/>
                </td>
            </tr>

            
            <tr>
            	<td colspan="2" align="center">
            		<button type="submit" class="btn btn-success">Save</button>
            	</td>
            </tr>
        </table>
        </form>
    </div>	
    <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
