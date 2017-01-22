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
                <li><a href="login.jsp">Login</a></li>
            </ul>
        </div>
    </nav>
    <div class="container">
        <form action="registerServlet" method="POST">
            <div class="row">
                <div class="col-xs-8">
                    <label>First Name:</label>
                    <input type="text" name="firstName" class="form-control" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>Last Name:</label>
                    <input type="text" name="lastName" class="form-control" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>EmailID:</label>
                    <input type="text" name="email" class="form-control" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>UserID</label>
                    <input type="text" name="userid" class="form-control" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>Street:</label>
                    <input type="text" name="street" class="form-control">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>State:</label>
                    <input type="text" name="state" class="form-control">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>City:</label>
                    <input type="text" name="city" class="form-control">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <label>ZipCode:</label>
                    <input type="text" name="zipCode" class="form-control">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-xs-8">
                    <a href="login.jsp" class="btn btn-default" style="float:right;">Back</a>
                    <button type="submit" class="btn btn-primary" style="float:right;margin-right:5px">Register</button>
                </div>
            </div>
        </form>
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