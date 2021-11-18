<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@ include file="head.html" %>
</head>

<body>
	<%@ include file="header.jsp" %>

<section>
	<div class="container">
		<div class="row">
	        <div class="col-xs-12">
				<div id="carouselExampleIndicators" class="carousel carousel-dark slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				  <div class="carousel-inner">
				    <div class="carousel-item active" style="height: 550px">
				      <img class="d-block w-100" src="https://static.zara.net/photos//2021/V/0/2/p/4501/722/800/32/w/1920/4501722800_15_2_0.jpg?ts=1619706276787" alt="First slide">
				    </div>
				    <div class="carousel-item"  style="height: 550px">
				      <img class="d-block w-100" src="https://static.zara.net/photos//2021/V/0/2/p/4563/196/802/32/w/1920/4563196802_15_2_0.jpg?ts=1619706656951" alt="Second slide">
				    </div>
				    <div class="carousel-item" style="height: 550px">
				      <img class="d-block w-100" src="https://static.zara.net/photos//2021/V/0/2/p/6403/530/800/32/w/1920/6403530800_15_2_0.jpg?ts=1619706548969" alt="Third slide">
				    </div>
				  </div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
	    </div>
	</div>
	</div>
</section>
	<%@ include file="footer.jsp" %>
</body>
</html>