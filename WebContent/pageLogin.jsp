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
	<div class="container col-md-12" style="width: 600px; height: 550px">
		<form action="LoginPro.jsp" method = "post">
			    <div class="col-md-12 form-group">
			      <label for="id">ID</label>
			      <input type="text" class="form-control" name="id" placeholder="Enter id" required >
			    </div>
			    <div class="col-md-12 form-group">
			      <label for="password">Password</label>
			      <input type="password" class="form-control" name="pwd" placeholder="Enter password" required >
			    </div>
			    <div class="col-md-12" align="center">
			      <button type="submit" class="btn btn-default">Login</button>
			      <button type="button" class="btn btn-default">Cancel</button>
 			    </div>
		</form>
	</div>
	
	</section>
<%@ include file="footer.jsp" %>
</body>

</html>