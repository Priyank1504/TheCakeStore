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
			<div class="row" style="margin-left:-57px">
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Choco Lava.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Choco Lava</h3>
						<b>$100/-</b>
						<p>Choco Lava Cake or Chocolate Fondant Cake, warm liquid chocolate filled cake is enjoyed by every one from every age group.</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Choco Lava">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Choclate Truffle.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Chocolate Truffle</h3>
						<b>$100/-</b>
						<p>Raspberries layered with pound cake, sweetened cream cheese and whipped cream are dusted with cocoa and chilled before serving</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Choclate Truffle">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
			</div>
			
			<div class="row" style="margin-left:-57px">
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Black Forest.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Black Forest</h3>
						<b>$100/-</b>
						<p>Black Forest cake consists of several layers of chocolate cake, with whipped cream and cherries between each layer.</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Black Forest">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Caramel Cake.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Caramel Cake</h3>
						<b>$100/-</b>
						<p>Beat the butter, sugar, eggs, flour, almonds and spices until thoroughly mixed and creamy.</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Caramel Cake">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
			</div>
			
			<div class="row" style="margin-left:-57px">
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Oreo Cake.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Oreo Cake</h3>
						<b> $100/-</b>
						<p>A moist chocolate cake full of Oreo icing! In love of Oreo and for those who are mad about it!</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Oreo Cake">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
				<div class="col-xs-6">
					<div class="col-xs-2">
					<img src="images/Pine Apple Cake.png" alt="Smiley face" height="150" width="150">
				</div>
				<div class="col-xs-4" style="margin-left:76px;">
					<div>
						<h3>Pine Apple Cake</h3>
						<b>$100/-</b>
						<p>This classic favorite has made a comeback, and it's easier to make when using a cake mix.</p>
					</div>
				</div>
				<div class="col-xs-2">
					<form action="buyCakeServlet" method="POST">
						<input type="hidden" name="price" value="100">
						<input type="hidden" name="cakeName" value="Pine Apple Cake">
						<input type="hidden" name="userID" value="${user.usedID}">
						<input type="hidden" name="password" value="${user.password}">
						<input type="submit" class="btn btn-primary" value="BUY" style="margin: 61px 0px 0px 21px;">
					</form>
					
				</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		<div class="container-fluid">
			<hr style="border:2px solid #e7e7e7">
			<div class="row">
				<div class="col-xs-12">
					<footer style="bottom:0;width:100%;margin-left: 0px; position: fixed;overflow:hidden" class="w3-container w3-center w3-black">
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