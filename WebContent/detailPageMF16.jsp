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
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_2.png" width="100%">
					<h5></h5>
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_3.png" width="100%">
					<h5></h5>
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_4.png" width="100%">
					<h5></h5>
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_5.png" width="100%">
					<h5></h5>
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_6.png" width="100%">
					<h5></h5>
					<img src="./man/Pants/크롭 카고 팬츠_MF16/MF16_7.png" width="100%">
					<h5></h5>
					
				</div>
			</div>
			
			<div class="col-md-4" align="center">
				<div style="position: fixed; left: 68%; transform: translate(-32%, 0);">
					<div style="margin-top: 20px"><h4>크롭 카고 팬츠</h4></div>
					<div><h5>59,000 WON</h5></div>
					
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
					허리 부분에 셔링 디테일이 매치된 팬츠. 
					앞면 포켓과 뒷면 파이핑 포켓 디테일. 
					다리 부분에 플랩 패치 포켓 아플리케가 매치됨. 
					롤업 스타일 밑단. 앞면 지퍼와 버튼 여밈.
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