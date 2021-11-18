<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DTO_BOARD" %>
<%@page import="dto_dao.DAO" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>

<head>
<%
	String boardNumber = request.getParameter("boardNumber");
	DAO dao = new DAO();

 	if(request.getParameter("edit") != null){
 		String content = request.getParameter("content");
 		String title = request.getParameter("title");
 		String sql = "UPDATE BOARD SET SUBJECT='"+title+"' , BOARD_CONTENT='"+content+"' WHERE BOARD_NUMBER='"+boardNumber+"'";
 		dao.setSql(sql);
		dao.db_update_board();
		%>
		<script>
  		 alert("정보수정이 완료되었습니다.");
  		location.href="./pageQnA.jsp";
		</script>
		<% 	}
 	else{
 		response.sendRedirect("./pageQnA.jsp");
 	}

%>
<meta charset="UTF-8">

</head>

<body>
	
</body>
</html>