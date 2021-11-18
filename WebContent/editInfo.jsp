<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@include file = "head.html" %>

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
<%@include file = "header.jsp" %>
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
	</div>
	<div class="container" style="width: 600px">
		<form action="editPro.jsp" method="post">
		  <fieldset>
		    <legend>Edit info</legend>
		    <br>

		    <div class="form-group">
		      <label for="exampleInputPassword1">Password</label>
		      <input type="password" class="form-control" name="password" placeholder="Enter password" required >
		      <small id="emailHelp" class="form-text text-muted">비밀번호는 8자 이상 입력하세요.</small>
		    </div>
		    
		    <div class="form-group">
		      <label for="exampleInputEmail1">Email address</label>
		      <input type="email" class="form-control" name="email" aria-describedby="emailHelp" placeholder="Enter email" required >
		      <small id="emailHelp" class="form-text text-muted">ex: ex@naver.com</small>
		    </div>
		    
		    <div class="form-group">
		      <label for="exampleInputPassword1">Tel</label>
		      <input type="tel" class="form-control" name="phone" placeholder="Enter phone number" pattern="(010)-[0-9]{4}-[0-9]{4}" required >
		      <small id="emailHelp" class="form-text text-muted">ex: 010-1234-5678</small>
		    </div>
		    
			<div class="col-xs-12" align="center">
			  <button type="submit" class="btn btn-default">Edit</button>
			  <button type="button" class="btn btn-default">Cancel</button>
 			</div>
		  </fieldset>
		</form>
	</div>
</section>

<%@include file="footer.jsp" %>
</body>
</html>