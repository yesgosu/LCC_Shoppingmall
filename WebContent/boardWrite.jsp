<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="head.html" %>
	<%
	try{
	Integer check2 = (Integer)session.getAttribute("check");
	if(check2 == 0 || check2 == null){
		%>
		<script>
			alert("로그인이 필요합니다");
			history.back();
		</script>
	<%}}catch (Exception e){%>
		<script>
		alert("로그인이 필요합니다");
		history.back();
		</script>
	<%}%>
</head>

<body>
<%@ include file="header.jsp" %>
<section>
	<div class="container" style="width: 600px">
	<form action="boardWritePro.jsp" method="post">
	<fieldset>
	<legend>QnA</legend>
		<div class="form-group" align="left">
			<label>제목</label>
			<input type="text" class="form-control" name="title" placeholder="제목을 입력하세요.">
		</div>

		<div class="form-group" align="left" style="margin-top: 10px;">
			<label>내용</label>
	    	<textarea class="form-control" name="content" rows="3" placeholder="내용을 입력하세요." style="resize: none; height: 400px"></textarea>
		</div>
		
		<div class="col-xs-12" align="center">
			  <button type="submit" class="btn btn-default" name="write">작성</button>
			  <button type="submit" class="btn btn-default" name="cancel">취소</button>
		</div>
	</fieldset>
	</form>
	</div>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>