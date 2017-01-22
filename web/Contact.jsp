<%-- 
    Document   : Contact
    Created on : Dec 3, 2016, 10:59:38 AM
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
                      <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:visible;height:400px;width:500px;"><div id="gmap_canvas" style="height:400px;width:500px;"><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.embedgooglemap.net" id="get-map-data">www.embedgooglemap.net</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:19,center:new google.maps.LatLng(35.307463,-80.72351989999999),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(35.307463, -80.72351989999999)});infowindow = new google.maps.InfoWindow({content:"<b>Bake and Cake</b><br/>9544 University Terrace Drive, <br/>28262 Charlotte, North Carolina" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                <div class="row">
                <div class="col-xs-12">
                <h2><b>Contact Information</b></h2>
                <p><b>ADDRESS:</b> 9544 University Terrace Drive, Charlotte, NC 28262<br>
                    <b>PHONE:</b> (704) 421-0672<br>
                    <b>EMAIL:</b> pverma5@uncc.edu<br>
    </p>
                </div>
                </div>
                          <!-- footer -->
    <div class="container-fluid">
        <hr style="border:2px solid #e7e7e7">
        <div class="row">
            <div class="col-xs-12">
                <footer style="bottom:0;width:100%;margin-left: 0px;position: fixed;overflow:hidden" class="w3-container w3-center w3-black">
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