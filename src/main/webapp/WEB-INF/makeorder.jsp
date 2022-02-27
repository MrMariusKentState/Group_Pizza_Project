<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!-- Formatting (dates) --> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- FOR Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" >
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" href="/css/style.css">
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/javascript/javascript.js" defer></script>

	<title>Add Algo</title>
</head>
<body class="bg-dark">
	<div class="container border text-light border bg-dark p-3">
		<h1 class="title_grad txt_grad title_bar">Make an Order</h1>
		<div class="taskbar">
			<div class="ms-3 width60">
				<p class="text-left">${user.firstName} ${user.lastName}</p>
			</div>
			<div class="taskbarBtns width40">
				<a class="links" href="/home">Home</a>
				<a class="links" href="/edit/user">Edit Profile</a>
				<a class="links" href="/logout">Logout - (${user.firstName} ${user.lastName})</a>
			</div>
		</div>

		<div class="d-flex flex-column justify-content-center align-items-center p-3">
			<h2 class="text-center" > ~ <span class="text-center bold">Make an Order</span> ~ </h2>
			<form:form action="/making/order" method="POST" modelAttribute="order">
				<p class="d-flex flex-column">
					<form:label class="color-bl label txt-underline" path="method">Method: </form:label>
					<form:errors class="text-danger" path="method"/>
					<form:textarea class="commentbox ms-3 bg-dark border border-light text-light" type="text" path="method" placeholder="Takeout, delivery, dine-in"/>
				</p>
				<p class="d-flex flex-column">
					<form:label class="color-bl label txt-underline" path="size">Size: </form:label>
					<form:errors class="text-danger" path="size"/>
					<form:input class="ms-3 bg-dark border border-light text-light" type="text" path="size" placeholder="Small, Medium, Large, X-Large"/>
				</p>
				<p class="d-flex flex-column">
					<form:label class="color-bl label txt-underline" path="crust">Crust: </form:label>
					<form:errors class="text-danger" path="crust"/>
					<form:input class="ms-3 bg-dark border border-light text-light" type="text" path="crust" placeholder="Deep Dish, Thin, Stuffed.."/>
				</p>
				<p class="d-flex flex-column">
					<form:label class="color-bl label txt-underline" path="quantity">QTY: </form:label>
					<form:errors class="text-danger" path="quantity"/>
					<form:input class="ms-3 bg-dark border border-light text-light" type="text" path="quantity" placeholder="Quantity"/>
				</p>
				<p class="d-flex flex-column">
					<form:label class="color-bl label txt-underline" path="toppings">Toppings: </form:label>
					<form:errors class="text-danger" path="toppings"/>
					<form:input class="ms-3 bg-dark border border-light text-light" type="text" path="toppings" placeholder="Pepperoni, Sausage, Extra Cheese..."/>
				</p>
<!-- 				<p class="d-flex flex-column"> -->
<%-- 					<form:label class="color-bl label txt-underline" path="price">Price: </form:label> --%>
<%-- 					<form:errors class="text-danger" path="price"/> --%>
<%-- 					<form:input class="ms-3 bg-dark color-gr border border-light" type="text" path="price" placeholder="Price"/> --%>
<!-- 				</p> -->
				
				<div class="d-flex flex-row justify-content-around m-3">
					<form:hidden path="price" value="12.50"/>
					<form:hidden path="user" value="${user.id}"/>
					<input class="btns" type="submit" value="Submit"/>
					<a class="btns"  href="/home">Cancel</a>
				</div>
			</form:form>
		</div>
	</div>


</body>
</html>

					
<!-- 							<option value="java">Java</option> -->
<!-- 							<option value="python">Python</option> -->
<!-- 							<option value="javascript">javascript</option> -->
<!-- 							<option value="C">C</option> -->
<!-- 							<option value="C#">C#</option> -->
					

<%-- 			<form:hidden path="user" value="${user}"/> --%>