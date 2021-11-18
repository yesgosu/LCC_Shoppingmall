<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		ArrayList<DTO_USERS> array = new ArrayList<>();
		DAO dao = new DAO();

		try{
			String sql = "SELECT * FROM USERS WHERE ID="+"'"+id+"'";
			dao.setSql(sql);
			array = dao.db_select();
	    	String db_id = array.get(0).getId();
	    	String db_pw = array.get(0).getPwd();
	    	String db_user_name = array.get(0).getName();
	    	if (db_id.equals(id)==false || db_pw.equals(pwd)==false) throw new Exception();
	    	session.setAttribute("check", 1);
	    	session.setAttribute("loggedin_user_name", db_user_name);
	    	session.setAttribute("loggedin_user_id", db_id);
	    	response.sendRedirect("./LoggedInMain.jsp");
		}catch (Exception e) {%>
		<script>
  		 alert("아이디 혹은 암호가 회원정보와 일치 하지 않습니다.");
		 history.back();
	    </script>
		<%} finally{}%>
		
</body>
</html>