<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DTO_BOARD" %>
<%@page import="dto_dao.DAO" %>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>

<head>
<%
	String userID = String.valueOf(session.getAttribute("loggedin_user_id"));
	String writerID = request.getParameter("writer");
	String boardNumber = request.getParameter("boardNumber");
	DTO_BOARD dtoBoard = new DTO_BOARD();
	DAO dao = new DAO();
	
 	if(request.getParameter("write") != null){
 		String content = request.getParameter("content");
 		String title = request.getParameter("title");
 		dtoBoard.setUSER_ID(userID);
 		dtoBoard.setSUBJECT(title);
 		dtoBoard.setBOARD_CONTENT(content);
		dao.db_insert_to_board(dtoBoard);
		response.sendRedirect("./pageQnA.jsp");
 	}
 	else if(request.getParameter("cancel") != null){
 		response.sendRedirect("./pageQnA.jsp");
 	}
 	else if(request.getParameter("edit") != null){
 		if(writerID.equals(userID)){
 			response.sendRedirect("./boardEdit.jsp?boardNumber="+boardNumber);
 		}
 		else{
 			%>
 			<script>
 			alert("작성자만 수정가능합니다.");
 			history.back();
 			</script>
 			<% 
			
 		}
 	}
 	else if(request.getParameter("list") != null){
 		response.sendRedirect("./pageQnA.jsp");
 	}
 	else{
 		//delete
 		if(writerID.equals(userID)){
 			dao.setSql("DELETE FROM BOARD WHERE BOARD_NUMBER='"+boardNumber+"'");
 			dao.db_delete_board();
 			%>
 			<script>
 			alert("글이 삭제되었습니다.");
 			location.href="./pageQnA.jsp";
 			</script>
 			<% 
 		}
 		else{
 			%>
 			<script>
 			alert("작성자만 삭제가능합니다.");
 			history.back();
 			</script>
 			<% 
			
 		}
 	}


%>
<meta charset="UTF-8">

</head>

<body>
	
</body>
</html>