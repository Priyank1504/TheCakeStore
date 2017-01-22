<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Project</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<body>
		<nav class="navbar navbar-default">
		  <div class="container">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Cake Store</a>
			</div>
                         <ul class="nav navbar-nav">
			  <li><a href="Contact.jsp">Contact</a></li>
			</ul>
			<ul class="nav navbar-nav">
			  <li><a href="login.jsp">Logout</a></li>
                        </ul>
                     <ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome ${user.firstName} ${user.lastName}</a></li>
                      </ul>
		  </div>
		</nav>
		<div class="container">
			<div class="row">
				<div class="col-xs-12 well">
					<h3>Your Payment is sucessful</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<img src="images/${payment.cakeName}.png" height="150" width="150">
				</div>
				<div class="col-xs-9">
					<h2>${payment.cakeName}</h2>
					<h4>USD ${payment.amount}</h4>
				</div>
			</div>
			<br><br>
			<div class="row">
				<div class="col-xs-3">
					<label>Full Name:</label>
				</div>
				<div class="col-xs-4">
					<p>${payment.firstName}  ${payment.lastName}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<label>Cake Name:</label>
				</div>
				<div class="col-xs-4">
					<p>${payment.cakeName}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<label>Amount:</label>
				</div>
				<div class="col-xs-4">
					<p>USD ${payment.amount}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<label>Email:</label>
				</div>
				<div class="col-xs-4">
					<p>${user.email}</p>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<label>Address:</label>
				</div>
				<div class="col-xs-4">
					<p>${user.street}, ${user.state}, ${user.city}, ${user.zipCode}</p>
				</div>
			</div>
		</div>
                        
		<!-- footer -->
      
		<div class="container-fluid">
			<hr style="border:2px solid #e7e7e7">
			<div class="row">
				<div class="col-xs-12">
					<footer style="bottom:0;width:100%;margin-left: 0px;overflow:hidden" class="w3-container w3-center w3-black">
                                             <a href="http://www.facebook.com"><i class="fa fa-facebook-official"></i></a>
                                             <a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a>
                                             <a href="http://www.flickr.com"><i class="fa fa-flickr"></i></a>
                                             <a href="http://www.linkedin.com"><i class="fa fa-linkedin"></i></a>
                                             <p>&copy;Powered By: Priyank Verma</p>
                                        </footer>
				</div>
			</div>
		</div>
   
	</body>
</html>