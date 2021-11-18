<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_CART" %>
<%@page import="dto_dao.DTO_PRODUCT" %>

<!DOCTYPE html>
<html>

<head>
<%
	ArrayList<DTO_PRODUCT> array = new ArrayList<>();
	DAO dao = new DAO();
	DTO_CART dto = new DTO_CART();
	
	String code = request.getParameter("code");
	String option = request.getParameter("size");
	String count = request.getParameter("count");
	String user_id = String.valueOf(session.getAttribute("loggedin_user_id"));

	String sql = "SELECT * FROM PRODUCTINFORMATION WHERE PRODUCTCODE='"+code+"'";
	dao.setSql(sql);
	array = dao.db_select_product();
	
	String total_price = String.valueOf(Integer.parseInt(array.get(0).getProductPrice()) * Integer.parseInt(count));
	
	try{
		dto.setUSER_ID(user_id);
		dto.setPRODUCT_CODE(code);
		dto.setPRODUCT_OPTION(option);
		dto.setPRODUCT_COUNT(count);
		dto.setPRODUCT_PRICE(total_price);
		
		dao.db_insert_to_cart(dto);
		%>
		<script>
			alert("장바구니에 추가되었습니다.");
			history.back();
		</script>
		<%}catch(Exception e){%>
		<script>
			alert("시스템상의 문제로 나중에 다시 시도해주십시오.");
		</script>
		<%}%>
<meta charset="UTF-8">
<title></title>
</head>

<body>

</body>
</html>