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
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_2.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_3.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_4.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_5.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_6.png" width="100%">
					<h5></h5>
					<img src="./man/Jacket/콤비 워커 점퍼_MA13/MA13_7.png" width="100%">
					<h5></h5>
					
				</div>
			</div>
			
			<div class="col-md-4" align="center">
				<div style="position: fixed; left: 68%; transform: translate(-32%, 0);">
					<div style="margin-top: 20px"><h4>콤비 워커 점퍼</h4></div>
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
					배색된 소재가 매치된 라펠 칼라 점퍼.
                    버튼 장식 커프스 마감 긴소매.
                    가슴 부분 패치 포켓. 워싱 이펙트. 앞면 버튼 여밈.
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