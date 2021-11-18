<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<!DOCTYPE html>
<html>

<head>
<%
	String user_id = String.valueOf(session.getAttribute("loggedin_user_id"));
	String pw = request.getParameter("password");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	try{
		String sql = "UPDATE USERS SET PWD='"+pw+"' , EMAIL='"+email+"', PHONE='"+phone+"' WHERE ID='"+user_id+"'" ;
		DAO dao = new DAO();
		dao.setSql(sql);
		dao.db_update_users();
		%>
		<script>
  		 alert("정보수정이 완료되었습니다.");
  		location.href="./orderList.jsp";
		</script>
		<%
	}catch(Exception e) {}
%>

<meta charset="UTF-8">
</head>

<body>

</body>
</html>