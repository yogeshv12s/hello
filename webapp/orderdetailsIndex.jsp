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
				<li><a href="orderdetailsIndex.jsp"
					class="nav-link">OrderDetails</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="shopIndex.jsp"
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
			<a href="orderdetails?action=list" class="btn btn-info">Display All Orderdetails</a>
		</div>       	
        </h4>
        <hr>
	</center>
    <div align="center">
		<c:if test="${orderdetails != null}">
			<form action="orderdetails?action=update" method="post">
        </c:if>
        <c:if test="${orderdetails == null}">
			<form action="orderdetails?action=insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            	<h2>
            		<c:if test="${orderdetails != null}">
            			Edit orderdetails
            		</c:if>
            		<c:if test="${orderdetails == null}">
            			Add New orderdetails
            		</c:if>
            	</h2>
            	<br>
        		<c:if test="${orderdetails != null}">
        			<input type="hidden" name="id" value="<c:out value='${orderdetails.id}' />" />
        		</c:if>            
           
            <tr>
                <th>Customer</th>
                <td>
                	<input type="text" name="customer" size="45"
                			value="<c:out value='${orderdetails.customer}' />"
                	/>
                </td>
            </tr>
             <tr>
                <th>Payment Mode</th>
                <td>
                	<input type="radio" id="card" name="paymentmode" size="45" value="card">
					<label for="card">CARD</label><br>
					<input type="radio" id="cash" name="paymentmode" size="45" value="cash">
					<label for="cash">CASH</label>
					<input type="radio" id="online banking" name="paymentmode" size="45" value="online banking">
					<label for="online banking">ONLINE BANKING</label>
					<input type="radio" id="upi" name="paymentmode" size="45" value="upi">
					<label for="upi">UPI</label>
                </td>
            </tr>
            <tr>
                <th>Date of Purchase</th>
                <td>
                	<input type="text" name="dateofpurchase" size="45"
                			value="<c:out value='${orderdetails.dateofpurchase}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Shop</th>
                <td>
                	<input type="text" name="shop" size="45"
                			value="<c:out value='${orderdetails.shop}' />"
                	/>
                </td>
            </tr>
              <tr>
                <th>Total</th>
                <td>
                	<input type="text" name="total" size="45"
                			value="<c:out value='${orderdetails.total}' />"
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
