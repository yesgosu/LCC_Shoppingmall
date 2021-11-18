<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<%@page import="dto_dao.DTO_PRODUCT" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="head.html" %>
<%
	int count = Integer.parseInt(request.getParameter("count"));
	int total = 0;
	ArrayList<DTO_PRODUCT> array = new ArrayList<>();
	DAO dao = new DAO();
	
	String code = request.getParameter("code");
	String sql = "SELECT PRODUCTCODE, PRODUCTTPYE, PRODUCTNAME, PRODCUTPRICE FROM PRODUCTINFORMATION WHERE PRODUCTCODE="+"'"+code+"'";
	dao.setSql(sql);
	array = dao.db_select_product();
	String db_code = array.get(0).getProductCode();
	String db_name = array.get(0).getProductName();
	String db_type = array.get(0).getProductType();
	int db_price = Integer.parseInt((array.get(0).getProductPrice()));
	
%>
</head>

<body>
<section>
<%@ include file="header.jsp" %>
	<div class="container" align="center">
	ORDER FORM
	<hr style="border-width: 0px 0px 0px 0px; margin-top: 30px">
		 	<div class="row" style="font-size: 10pt">
		    	<div class="col-md-4">
		    		상품정보
		    	</div>
		    	
		    	<div class="col-md-1">
		    		판매가
		    	</div>
		    	
		    	<div class="col-md-2">
		    		수량
		    	</div>
		    	
		    	<div class="col-md-2">
		    		배송구분
		    	</div>
		    	
		    	<div class="col-md-1">
		    		배송비
		    	</div>
		    	
		    	<div class="col-md-2">
		    		합계
		    	</div>
	    	</div>
	<hr style="border-width: 0px 0px 0px 0px">
	    	<div class="row" style="font-size: 10pt">
		    	<div class="col-md-4">
		    		<%=db_name %>
		    		<b style="font-size: 8pt;">[SIZE : <%=request.getParameter("size") %>]</b>
		    		
		    	</div>
		    	
		    	<div class="col-md-1">
		    		<%=db_price %>
		    	</div>
		    	
		    	<div class="col-md-2">
		    		<%=count%>
		    	</div>
		    	
		    	<div class="col-md-2">
		    		기본배송
		    	</div>
		    	
		    	<div class="col-md-1">
		    		3,000
		    	</div>
		    	
		    	<div class="col-md-2">
		    		<%=db_price*count %> <% total = total+(db_price*count); %>
		    	</div>
	    	</div>
	  <hr style="border-width: 0px 0px 0px 0px">
	  
	  <div class="row" style="font-size: 10pt" align="center">
		    	<div class="col-md-6">

		    	</div>
		    	
		    	<div class="col-md-6" style="font-size: 12pt">
		    		(상품구매금액 : <%=total%>) + (배송비 : 3000) = 합계 : <%=total+3000 %>
		    	</div>

	   </div>
	   	  <hr style="border-width: 0px 0px 0px 0px">
	   	  
	   	<form action="orderResult.jsp?product_name=<%=db_name%>&price=<%=total+3000%>&count=<%=count %>&size=<%=request.getParameter("size")%>&code=<%=db_code %>" method = "post">
		<div class="row" align="left">
			<div class="col-md-6">
					    <div class="col-md-12" align="left">
					      <label>받는 분</label>
					      <input type="text" class="form-control" name="reciever" placeholder="수취인명을 입력하세요." required>
					    </div>
					    
					    <div class="col-md-12" align="left" style="margin-top: 10px">
					      <label>주소</label>
					      <input type="text" class="form-control" name="add" placeholder="배송받는 곳의 주소를 입력하세요." required >
					      <input type="text" class="form-control" name="add_sub" placeholder="나머지 주소를 입력하세요.(선택)" required style="margin-top: 5px" >
					    </div>
					    
					    <div class="col-md-12" align="left" style="margin-top: 10px">
					      <label>연락처</label>
					      <input type="tel" class="form-control" name="phone" placeholder="배송시 연락받을 번호를 입력하세요." pattern="(010)-[0-9]{4}-[0-9]{4}" required >
					      <small class="form-text text-muted">ex: 010-1234-5678</small>
					    </div>
					    
					    <div class="col-md-12" align="left" style="margin-top: 10px">
					      <label>이메일</label>
					      <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="이메일을 입력하세요." required >
					      <small class="form-text text-muted">ex: ex@naver.com</small> 
					    </div>
					    
					    <div class="col-md-12" align="left" style="margin-top: 10px">
					      <label>배송메시지</label>
	    				  <textarea class="form-control" name="message" rows="3"></textarea>
					    </div>
			</div>
			<div class="col-md-6" align="center" style="padding-top: 50px">
			 <h6>결제수단</h6>
			 	<div class="row" style="margin-top: 20px" align="center">
					<div class="col-md-2"></div>
					<div class="col-md"><input type="checkbox" name="payment" value="카드"> 카드</div>
					<div class="col-md"><input type="checkbox" name="payment" value="계좌이체"> 계좌이체</div>
					<div class="col-md"><input type="checkbox" name="payment" value="카카오페이"> 카카오페이</div>
					<div class="col-md-2"></div>
				</div>

				<div class="row" style="margin-top: 50px">
					<div class="col-md-2"></div>
					<div class="col-md-4"><h5>KRW</h5></div>
					<div class="col-md-4"><h2><%=total+3000 %></h2></div>
					<div class="col-md-2"></div>
				</div>
				
		 		<div class="d-grid gap-2">
  				<button class="btn btn-lg btn-primary" type="submit" style="padding: 15px"><h4 class="text-white">결제하기</h4></button>
  				</div>
			</div>
		</div>
		</form>
		
	</div>
 </section>
<%@ include file="footer.jsp" %>
 
</body>
</html>