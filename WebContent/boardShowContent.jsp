<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DTO_BOARD" %>
<%@page import="dto_dao.DAO" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="head.html" %>
<%
	DAO dao = new DAO();
	DTO_BOARD dtoBoard = new DTO_BOARD();
	ArrayList<DTO_BOARD> arrayBoard = new ArrayList<>();
	
	String boardNumber = request.getParameter("boardNumber");
	String userID = request.getParameter("writer");
	dao.setSql("SELECT * FROM BOARD WHERE BOARD_NUMBER='"+boardNumber+"'");
	arrayBoard = dao.db_select_board();
%>

</head>

<body>
<%@ include file="header.jsp" %>
<section>
	<div class="container" style="width: 600px">
	<form action="boardWritePro.jsp?writer=<%=userID %>&boardNumber=<%=boardNumber %>" method="post">
	<fieldset>
	<legend>QnA</legend>
		<div class="form-group" align="left">
			<label>제목</label>
			<input readonly type="text" class="form-control" name="title" value="<%=arrayBoard.get(0).getSUBJECT() %>" required>
		</div>
		
		<div class="form-group" align="left">
			<label>작성자</label>
			<input readonly type="text" class="form-control" name="title" value="<%=arrayBoard.get(0).getUSER_ID() %>" required>
		</div>

		<div class="form-group" align="left" style="margin-top: 10px;">
			<label>내용</label>
	    	<textarea readonly class="form-control" name="content" style="resize: none; height: 400px"><%=arrayBoard.get(0).getBOARD_CONTENT() %>
	    	</textarea>
		</div>
		
		<div class="col-xs-12" align="center">
			  <button type="submit" class="btn btn-default" name="list">목록</button>
  			  <button type="submit" class="btn btn-default" name="edit">수정</button>
  			  <button type="submit" class="btn btn-default" name="delete">삭제</button>
		</div>
	</fieldset>
	</form>
	</div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>