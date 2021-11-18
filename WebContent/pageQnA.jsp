<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<%@page import="dto_dao.DTO_BOARD" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.html" %>
<%request.setCharacterEncoding("UTF-8"); %>
<%
	DAO dao = new DAO();
	String user_id = String.valueOf(session.getAttribute("loggedin_user_id"));
	dao.setSql("SELECT * FROM BOARD");
	ArrayList<DTO_BOARD> dto = dao.db_select_board();
%>
<meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>
<section>
	<div class="container">
		<div class="row" style="margin-bottom: 50px" align="center">
	        <div class="col-md-12">
	         <h3>QnA</h3>
	        </div>
	    </div>
	    
		<div class="row" style="margin-left: 3%; margin-right: 3%; border: 1px dashed gray;" align="center">
		    <div class="col-md-1" style="border-right: 1px dashed gray">번호</div>
		    <div class="col-md-6" style="border-right: 1px dashed gray">제목</div>
		    <div class="col-md-2" style="border-right: 1px dashed gray">작성자</div>
		    <div class="col-md">작성일</div>
	  	</div>
	  	<%for(int i = 0; i<dto.size(); i++){%>
	  	<div class="row" style="padding-top: 10px; padding-bottom: 10px; margin-left: 3%; margin-right: 3%; border-bottom: 1px dashed gray; border-right: 1px dashed gray; border-left: 1px dashed gray;" align="center">
		    <div class="col-md-1" style="border-right: 1px dashed gray"><%=dto.get(i).getBOARD_NUMBER()%></div>
		    <div class="col-md-6" style="border-right: 1px dashed gray"><a href="./boardShowContent.jsp?boardNumber=<%=dto.get(i).getBOARD_NUMBER()%>&writer=<%=dto.get(i).getUSER_ID()%>"><%=dto.get(i).getSUBJECT() %></a></div>
		    <div class="col-md-2" style="border-right: 1px dashed gray"><%=dto.get(i).getUSER_ID() %></div>
		    <div class="col-md"><%=dto.get(i).getWRITE_DATE() %></div>
	  	</div>
	  	<%} %>
		<div class="row" align="center" style="margin-top: 5px">
			<div class="col-xs-12">
		  		<button type="submit" class="btn btn-default" name="write"onclick="location.href='./boardWrite.jsp'">글쓰기</button>
		  	</div>
	  	</div>
	</div>
		
</section>
 <%@include file="footer.jsp" %>
</body>
</html>