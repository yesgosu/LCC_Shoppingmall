<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto_dao.DAO" %>
<%@page import="dto_dao.DTO_USERS" %>
<%request.setCharacterEncoding("UTF-8"); %>
	<%
		request.getParameter("name");
		request.getParameter("id");
		request.getParameter("password");
		request.getParameter("email");
		request.getParameter("phone");
		request.getParameter("birthday");
		request.getParameter("gender");
		
		DTO_USERS dtoUsers = new DTO_USERS(request.getParameter("id"),
		request.getParameter("password"),
		request.getParameter("name"),
		request.getParameter("email"),
		request.getParameter("birthday"),
		request.getParameter("phone"),
		Integer.parseInt(request.getParameter("gender")));
		
		
		DAO daoInsertUsers = new DAO();
		daoInsertUsers.db_insert_to_USERS(dtoUsers);
		session.setAttribute("check", 1);
		session.setAttribute("loggedin_user_id", request.getParameter("id"));
		%>
		<%
		response.sendRedirect("./index.jsp"); %>
