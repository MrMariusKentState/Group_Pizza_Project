<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<!-- FOR Bootstrap CSS (SIMPLE) -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

	<!-- MY OWN CSS -->
	<link rel="stylesheet" href="/css/home.css"/>
	

	<!-- FOR ANY BOOTSTRAP THAT USES JS OR jQuery-->
<!-- 	<script src="/webjars/jquery/jquery.min.js"></script> -->
<!-- 	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script> -->
	<script type="text/javascript" src="/js/rain.js" defer></script>
	<title>Home</title>
</head>
<body class="bgLightBlack">
	<div class="package bgLightBlack">
		<h1 class="title_grad txt_grad title_bar" >The World's Best Pizza</h1>
		<div class="taskbar">
			<div class="marginLeft width70">
				<p class="txtLeft text-secondary">Welcome ${user.firstName} ${user.lastName}</p>
			</div>
				
			<div class="taskbarBtns width30">
				<a class="links" href="/edit/user">Edit Profile</a>
				<a class="links" href="/make/order">Order</a>
				<a class="links" href="/logout">Logout - (${user.firstName} ${user.lastName})</a>
			</div>
		
		</div>
		
		<div id = "pizza">
		
		<h3 class = "headers">Select a pizza to begin your order!</h3>
		<h4 class = "headers">All pizzas come with your choice of toppings and crust.</h4>
		<br>
		
		
			<div id = "leftcol">
		
				<h4 class = "menutext">Cheese</h4>
		        <p class = "hometext">Served with our fresh mozzarella covered in classic marinara sauce!</p>
		  
		
		        <h4 class = "menutext">Sausage</h4>
		        <p class = "hometext">Topped with our fresh italian sausage and mozzarella cheese!</p>
				
				
		        <h4 class = "menutext">Pepperoni</h4>
		        <p class = "hometext">Topped with small, thinly-sliced pepperoni and mozzarella cheese!</p>
		       
		        
		        <h4 class = "menutext">Meat Lover's!</h4>
		        <p class = "hometext">Toppings include pepperoni, italian sausage, bacon, and beef!</p>
		
			</div>
			<div id = "rightcol">
		
			 	<h4 class = "menutext">Hawaiian Pizza</h4>
		        <p class = "hometext">Toppings include ham and pineapple with our fresh mozzarella and classic marinara sauce!</p>
		       
		        
		        <h4 class = "menutext">Supreme Pizza</h4>
		        <p class = "hometext">Toppings include pepperoni, italian sausage, mushrooms, green peppers and red onions!</p>
		        
		        <h4 class = "menutext">Veggie Pizza</h4>
		        <p class = "hometext">Toppings include mushrooms, green peppers red onions, roma tomatoes, and black olives!</p>
		        
		        <h4 class = "menutext">Barbeque Chicken Pizza</h4>
		        <p class = "hometext">Toppings include white-mean chicken, bacon, and red onions with cheddar and mozzarella cheeses and our honey barbecue sauce!</p>
		     
		     </div>   
		</div>
	</div>
</body>
</html>

<!-- 		<div class="myContainer">  -->
<!-- 		  <h2 class="title">Algos</h2>          -->
<!-- 		  <table> -->
<!-- 			<thead class="bgDkGrey"> -->
<!-- 			  <tr class="bgDkGrey black"> -->
<!-- 			    <th>Algo</th> -->
<!-- 			    <th>Description</th> -->
<!-- 			    <th>Language</th> -->
<!-- 			    <th>Likes</th> -->
<!-- 			    <th>Action</th> -->
<!-- 			  </tr> -->
<!-- 			</thead> -->
<!-- 			<tbody> -->
			
<%-- 				<c:forEach  items="${algos}" var="algo"> --%>
<!-- 				  <tr class="bgDarkDkGrey"> -->
<%-- 				  	<td> <a class="links" href="/algo/details/${algo.id}"> ${algo.name}</a> </td> --%>
<%-- 				    <td>${algo.description}</td> --%>
<%-- 				    <td>${algo.language}</td> --%>
<%-- 				    <td>${algo.likers.size()}</td> --%>
<!-- 				    <td> -->
<%-- 				    	<c:choose> --%>
<%-- 				    	<c:when test="${algo.likers.contains(user)}"> --%>
<%-- 				    		<a class="links" href="/unlike/${algo.id}">Unlike</a> --%>
<%-- 				    	</c:when> --%>
<%-- 				    	<c:otherwise> --%>
<%-- 				    		<a class="links" href="/like/${algo.id}">Like</a> --%>
<%-- 				    	</c:otherwise> --%>
<%-- 				    	</c:choose> --%>
<!-- 				    </td> -->
<!-- 				  </tr> -->
<%-- 				</c:forEach> --%>
<!-- 			</tbody> -->
<!-- 		  </table> -->

<!-- 		</div> -->


