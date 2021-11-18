<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@ include file="head.html" %>
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
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_2.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_3.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_4.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_5.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_6.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/워터프루프 점퍼_MA08/MA08_7.png" width="100%">
					<h5></h5>
					
				</div>
			</div>
			
			<div class="col-md-4" align="center">
				<div style="position: fixed; left: 68%; transform: translate(-32%, 0);">
					<div style="margin-top: 20px"><h4>워터프루프 점퍼</h4></div>
					<div><h5>39,000 WON</h5></div>
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
					내부가 얇게 퀼팅 처리된 신축성 있는 바람막이 기능성 소재의 점퍼.
					신축성 있는 커프스 마감 긴소매 하이넥 디자인.
                     지퍼로 여미는 가슴과 골반 부분 파이핑 포켓 내부 포켓 디테일.
                      신축성 있는 밑단.
                     앞면 지퍼 여밈.
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