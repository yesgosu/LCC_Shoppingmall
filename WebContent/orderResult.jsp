<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<%@page import="dto_dao.DTO_PRODUCT" %>
<%@page import="dto_dao.DTO_ORDERS" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<%
	ArrayList<DTO_PRODUCT> array = new ArrayList<>();
	DAO dao = new DAO();
	String customer_name = String.valueOf(session.getAttribute("loggedin_user_name"));
	String customer_id = String.valueOf(session.getAttribute("loggedin_user_id"));
	String reciever = request.getParameter("reciever");
	String add = request.getParameter("add") +" "+  request.getParameter("add_sub");
	String recieverNumber = request.getParameter("phone");
	String productName = request.getParameter("product_name");
	String productCode = request.getParameter("code");
	String option = request.getParameter("size");
	String count = request.getParameter("count");
	String message = request.getParameter("message");
	String price = request.getParameter("price");
	String method = request.getParameter("payment");
	
	DTO_ORDERS dto = new DTO_ORDERS(productCode, customer_id, customer_name, productName, count, price, reciever, 
			recieverNumber, add, message, method, option);
	
	dao.db_insert_to_orders(dto);
	%>
<%@ include file="head.html" %>

</head>

<body>
	<%@ include file="header.jsp" %>
<section>
<div class="container" align="center">
	<div>
	<주문자><br><%=customer_name%><br><br>
	</div>
	<div>
	<수령인><br><%=reciever %><br><br>
	</div>
	<div>
	<배송지><br><%=add%> <br><br>
	</div>
	<div>
	<수령인 전화번호><br><%=recieverNumber %><br><br>
	</div>
	<div>
	<상품명><br><%=productName %><br><br>
	</div>
	<div>
	<옵션><br><%=option %><br><br>
	</div>
	<div>
	<수량><br><%=count %><br><br>
	</div>
	<div>
	<배송메시지><br><%=message %><br><br>
	</div>
	<div>
	<결제금액><br><%=price%><br><br>
	</div>
	<div>
	<결제수단><br><%=method%><br><br>
	</div>
	<div>
	<input type="button" value="확인" onclick = "location.href='./LoggedInMain.jsp'">
	</div>
</div>
</section>
	<%@ include file="footer.jsp" %>
</body>
</html>