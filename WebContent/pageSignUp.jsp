<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<%@include file = "head.html" %>
</head>

<body>
<%@include file = "header.jsp" %>
<section>
	<div class="container" style="width: 600px">
		<form action="SignUpPro.jsp" method="post">
		  <fieldset>
		    <legend>Sign Up</legend>
		    <br>
		    <div class="form-group">
		      <label for="exampleInputPassword1">Name</label>
		      <input type="text" class="form-control" name="name" placeholder="Enter name" required >
		    </div>
		    <div class="form-group">
		      <label for="exampleInputPassword1">Id</label>
		      <input type="text" class="form-control" name="id" placeholder="Enter id" required >
		    </div>
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
		    <div class="form-group">
		      <label for="exampleInputPassword1">BirthDay</label>
		      <input type="text" class="form-control" name="birthday" placeholder="Enter BirthDay" required>
		      <small id="emailHelp" class="form-text text-muted">ex: 2000.01.01</small>     
		    </div>
		    <div class="form-group">
		      <label for="exampleSelect1">Gender</label>
		      <select class="form-control" name="gender" >
		        <option value="">--Please choose an option--</option>
		        <option value="1">Male</option>
		        <option value="2">Female</option>
		      </select>
		    </div>
			<div class="col-xs-12" align="center">
			  <button type="submit" class="btn btn-default">Sign Up</button>
			  <button type="button" class="btn btn-default">Cancel</button>
 			</div>
		  </fieldset>
		</form>
	</div>
</section>

<%@include file="footer.jsp" %>
</body>
</html>