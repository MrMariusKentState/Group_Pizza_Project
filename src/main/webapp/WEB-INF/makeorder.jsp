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
	<link rel="stylesheet" href="/css/stylekaris.css">
	<link rel="stylesheet" href="/css/style.css">
	<!-- For any Bootstrap that uses JS or jQuery-->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/javascript/javascript.js" defer></script>

	<title>Order Pizza</title>
</head>

<body>
<div class="background">
<nav class="bg-dark p-2">
	<div class="row d-flex align-items-center justify-content-between p-3">
		<div class = "col-md-4">
			<a class="navbar-brand link" href="/home"> Tony's Pizza</a>
		</div>
		<div class = "col-md-5">
				<a class="link" href="/home">Home</a>
				<a class="link" href="/edit/user">Edit Profile</a>
				<a class="link" href="/logout">Logout - (${user.firstName} ${user.lastName})</a>
		</div>
	
	</div>
</nav>
<div class="container">

		<h1 class="title_grad txt_grad title_bar">Make an Order</h1>
	

		<div class="d-flex justify-content-center mt-4">
			<div class = "row border border-secondary p-4 rounded mb-4 card-background">
				<div class="col">
					<h2 class="text-center" > ~ <span class="text-center bold">Personalize Your Pizza</span> ~ </h2>
			
			<form:form action="/making/order" method="POST" modelAttribute="order">
				<div class="form-group col-md-12 mt-4">
					<form:errors class="text-danger" path="method"/>
					<div class = "row align-items-center">
						<div class = "col-md-3">
							<form:label class="" path="method">Method: </form:label>
						</div>
						<div class = "col-md-5">
							<form:select class="form-control" type="text" path="method" placeholder="Takeout, delivery, dine-in">
								<option value="takeout">Takeout</option>
	        					<option value="delivery">Delivery</option>
	        					<option value=dinein>Dine-in</option>
							</form:select>
						</div>
					</div>
				</div>
			
			
				<div class="form-group col-md-12 mt-3">
					<form:errors class="text-danger" path="size"/>
					<div class = "row align-items-center">
						<div class = "col-md-3">
							<form:label  path="size">Size: </form:label>
						</div>
						<div class = "col-md-5">
							<form:select class="form-control" type="text" path="size" placeholder="Small, Medium, Large, X-Large">
								<option value="small">Small</option>
	        					<option value="medium">Medium</option>
	        					<option value=large>Large</option>
	        					<option value=xlarge>X-Large</option>
							</form:select>
						</div>
					</div>
				</div>
			
				
				<div class="form-group col-md-12 mt-3">
					<form:errors class="text-danger" path="crust"/>
					<div class = "row align-items-center">
						<div class = "col-md-3">
							<form:label path="crust">Crust: </form:label>
						</div>
						<div class = "col-md-5">
							<form:select class="form-control mbd-select md-form" type="text" path="crust">
								<option value="deepdish">Deep Dish</option>
	        					<option value="thin">Thin</option>
	        					<option value="thick">Thick</option>
	        					<option value=stuffed>Stuffed</option>
	        					<option value=glutenfree>Gluten Free</option>
							</form:select>
						</div>
					</div>
				</div>
				
				<div class="form-group col-md-12 mt-3">
					<form:errors class="text-danger" path="quantity"/>
					<div class = "row align-items-center">
						<div class = "col-md-3">
							<form:label class="color-bl label txt-underline" path="quantity">QTY: </form:label>
						</div>
						<div class = "col-md-3">
							<form:input class="form-control" type="number" min="1" path="quantity" placeholder="Quantity"/>
						</div>
					</div>
				</div>
				
			
				<div class="form-group col-md-12 mt-3">
					<form:errors class="text-danger" path="toppings"/>
					<div class = "row align-items-center">
						<div class = "col-md-3">
							<form:label path="toppings">Toppings: </form:label>
						</div>
						<div class = "col-md-9">
						<form:input class="form-control" type="text" path="toppings" placeholder ="Pepperoni, Extra Cheeese ..."/>
							</div>
					</div>
				</div>
			
<!-- 				<p class="d-flex flex-column"> -->
<%-- 					<form:label class="color-bl label txt-underline" path="price">Price: </form:label> --%>
<%-- 					<form:errors class="text-danger" path="price"/> --%>
<%-- 					<form:input class="ms-3 bg-dark color-gr border border-light" type="text" path="price" placeholder="Price"/> --%>
<!-- 				</p> -->
			
				<div class="d-flex flex-row justify-content-around mt-4">
					<form:hidden path="price" value="12.50"/>
					<form:hidden path="user" value="${user.id}"/>
					<input class="btn btn-primary" type="submit" value="Submit Order"/>
					<a class="btn btn-danger"  href="/home">Cancel</a>
				</div>
			</form:form>
		</div>
	</div>
</div>
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