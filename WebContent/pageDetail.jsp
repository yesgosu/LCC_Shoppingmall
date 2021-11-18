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
			<div class="col-md-8">
				<div class="row" style="margin: 20px;" align="center">
					<img src="./test.jpg" width="100%">
					<h5></h5>
					<img src="./test.jpg" width="100%">
					<h5></h5>
					<img src="./test.jpg" width="100%">
					<h5></h5>
				</div>
			</div>
			
			<div class="col-md-4" align="center">
				<div style="position: fixed; left: 68%; transform: translate(-32%, 0);">
					<div style="margin-top: 20px"><h4>Title</h4></div>
					<div>39,000 WON</div>
					<div>Option</div>
					<div>Count</div>
					<div>Desc</div>
					<div>Size&Order&Detail</div>
					<button type="submit" class="btn btn-primary">Buy</button>
					<button type="button" class="btn btn-primary">Cart</button>
				</div>
			</div>
		</div>
	</div>
</section>
	<%@ include file="footer.jsp" %>
</body>
</html>