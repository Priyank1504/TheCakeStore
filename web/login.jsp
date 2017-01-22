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
	<body style="background-color:grey">
		<input type="hidden" data-toggle="modal" href="#myModal">
		<div class="container">
			<div class="modal show" role="dialog">
				<div class="modal-dialog" style="margin-top:10%;">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Cake Store login</h4>
						</div>
						<div class="modal-body">
                                                     <div class="row">
                                                            <div class="col-xs-12">
                                                                <strong style="color:red;margin-left:186px">${error}</strong>
                                                            </div>
                                                                 
                                                        </div>
                                                    <form action="loginServlet" method="POST">
							<div class="row" style="margin-top:10px">
								<div class="col-xs-3">
									<label>Login:</label>
								</div>
								<div class="col-xs-9">
									<input type="text" name="userid" class="form-control">
								</div>
							</div><br>
								<div class="row">
								<div class="col-xs-3">
									<label>Password:</label>
								</div>
								<div class="col-xs-9">
									<input type="password" name="password" class="form-control">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-xs-12">
                                                                    <a href="register.jsp" style="margin-left: 152px;">Don't have a account? Register here!</a>
								</div>
							</div>
                                                       
                                                
						</div>
						<div class="modal-footer">
							<input type="submit" class="btn btn-primary" value="Login">
						</div>
                                            </form>
					</div>
				</div>
			</div>
		</div>
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
