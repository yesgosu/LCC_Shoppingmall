<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% session.setAttribute("check", 0);
session.invalidate();
response.sendRedirect("./index.jsp");%>