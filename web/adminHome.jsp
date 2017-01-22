<%-- 
    Document   : adminHome
    Created on : Dec 2, 2016, 11:28:24 PM
    Author     : priya
--%>
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
			  <li><a href="login.jsp">Logout</a></li>
			</ul>
             </div>
	</nav>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h1>Please find the list of all the Payment</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <table class="table table-striped">
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Card Number</th>
                            <th>CCV</th>
                            <th>Cake Name</th>
                            <th>Amount</th>
                        </tr>
                         <c:forEach var="payment" items="${paymentList}">
                                <tr>
                                    <td><c:out value="${payment.firstName}"/></td>
                                    <td><c:out value="${payment.lastName}"/></td>
                                    <td><c:out value="${payment.cardNumber}"/></td>
                                    <td><c:out value="${payment.ccv}"/></td>
                                    <td><c:out value="${payment.cakeName}"/></td>
                                    <td>USD <c:out value="${payment.amount}"/></td>
                                </tr>
                         </c:forEach>
                        
                    </table>
                </div>
            </div>
            
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
        </div>
       
    
    </body>
</html>
