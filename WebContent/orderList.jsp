<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<%@page import="dto_dao.DTO_PRODUCT" %>
<%@page import="dto_dao.DTO_ORDERS" %><!DOCTYPE html>
<html>
<head>
<%@ include file="head.html" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
	DAO dao = new DAO();
	String user_id = String.valueOf(session.getAttribute("loggedin_user_id"));
	dao.setSql("SELECT * FROM ORDERS WHERE USERID ='"+user_id+"'");
	ArrayList<DTO_ORDERS> dto = dao.db_select_oreders();
%>
<meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<div class="container">
		<div class="row" style="margin-bottom: 50px">
	        <div class="col-md-4">
	        </div>
	        
	        <div class="col-md" align="center">
	        	<small><a href="./orderList.jsp">Order</a></small>
	        </div>
	        
	        <div class="col-md" align="center">
	        	<small><a href="./cart.jsp">Cart</a></small>
	        </div>
	        	
	        <div class="col-md" align="center">
	     	   <small><a href="./editInfo.jsp">Edit Info</a></small>
	        </div>
	        
	        <div class="col-md-4">
	        </div>
	    </div>
	    
		<div class="row" style="margin-left: 3%; margin-right: 3%; border: 1px dashed gray;" align="center">
		    <div class="col-md-5" style="border-right: 1px dashed gray">상품명</div>
		    <div class="col-md-1" style="border-right: 1px dashed gray">옵션</div>
		    <div class="col-md-1" style="border-right: 1px dashed gray">수량</div>
		    <div class="col-md-1" style="border-right: 1px dashed gray">가격</div>
		    <div class="col-md">주문일자</div>
	  	</div>
	  	<%for(int i = 0; i<dto.size(); i++){%>
	  	<div class="row" style="padding-top: 10px; padding-bottom: 10px; margin-left: 3%; margin-right: 3%; border-bottom: 1px dashed gray; border-right: 1px dashed gray; border-left: 1px dashed gray;" align="center">
		    <div class="col-md-5" style="border-right: 1px dashed gray"><%=dto.get(i).getFRODUCTNAME() %></div>
		    <div class="col-md-1" style="border-right: 1px dashed gray"><%=dto.get(i).getPRODUCT_OPTION() %></div>
		    <div class="col-md-1" style="border-right: 1px dashed gray"><%=dto.get(i).getORDERQNANTITY() %></div>
		    <div class="col-md-1" style="border-right: 1px dashed gray"><%=dto.get(i).getFORDUCTPRICE() %></div>
		    <div class="col-md"><%=dto.get(i).getPAYMENTTIME() %></div>
	  	</div>
	  	<%} %>
	</div>
		
</section>
 <%@include file="footer.jsp" %>
</body>
</html>