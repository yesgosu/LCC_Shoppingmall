<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.html" %>
<%request.setCharacterEncoding("UTF-8"); %>

<meta charset="UTF-8">
</head>
<body>
<%@include file="header.jsp" %>
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
		    <div class="row" style="margin-left: 3%; margin-right: 3%">
		    	<div class="col-md-2" style="height: 50%">
		    		<img src="./test.jpg" width="70%" height="70%">
		    	</div>
		    	
		    	<div class="col-md-6" style="background-color: blue">
		    	2
		    	</div>
		    	
		    	<div class="col-md-2">
		    	3
		    	</div>
		    	
		    	<div class="col-md-1">
		    	4
		    	</div>
	    </div>
	</div>
</section>
 <%@include file="footer.jsp" %>
</body>
</html>