<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@ include file="head.html" %>
<%request.setCharacterEncoding("UTF-8"); %>

<%
	String code = request.getServletPath();

	String dir_edit;
	dir_edit = code.substring(11, code.indexOf("."));
%>
</head>

<body>
	<%@ include file="header.jsp" %>

<section>
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="row" style="margin: 20px;" align="center">
					<img src="./woman/WSuit/타이다이 미니 원피스_WC10/WC10_2.png" width="100%">
					<h5></h5>
					<img src="./woman/WSuit/타이다이 미니 원피스_WC10/WC10_3.png" width="100%">
					<h5></h5>
					<img src="./woman/WSuit/타이다이 미니 원피스_WC10/WC10_4.png" width="100%">
					<h5></h5>
					<img src="./woman/WSuit/타이다이 미니 원피스_WC10/WC10_5.png" width="100%">
					<h5></h5>
					<img src="./woman/WSuit/타이다이 미니 원피스_WC10/WC10_6.png" width="100%">
					<h5></h5>
										
				</div>
			</div>
			
			<div class="col-md-4" align="center">
				<div style="position: fixed; left: 68%; transform: translate(-32%, 0);">
					<div style="margin-top: 20px"><h4>타이다이 미니 원피스</h4></div>
					<div><h5>49,000 WON</h5></div>
					
					<form action="datailPro.jsp" method="post">
					<div class="container" style="margin-top: 30px">
						SIZE
						<select class="form-control" name="size">
						  <option value="S">S</option>
						  <option value="M">M</option>
						  <option value="L">L</option>
						  <option value="XL">XL</option>
						  <option value="2XL">2XL</option>
						</select>
					</div>
					
					<div class="container" style="margin-top: 30px">
					<div>Count [MAX : 5]</div>
						<select class="form-control" name="count">
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						  <option value="4">4</option>
						  <option value="5">5</option>
						</select>
					</div>
					
					<div style="width: 300px; margin-top: 30px; margin-bottom: 20px">
					<p>INFO</p>
					뒷면 크로스 스타일 가느다란 어깨끈이 달린 브이넥 원피스. 
					A라인 마감 밑단. 
					옆면 심라인 콘실 지퍼 여밈.
					</div>
					<button type="submit" class="btn btn-primary" name="buy" value=<%=dir_edit%>>Buy</button>
						<button type="submit" class="btn btn-primary" name="cart" value=<%=dir_edit%>>Cart</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
	<%@ include file="footer.jsp" %>
</body>
</html>