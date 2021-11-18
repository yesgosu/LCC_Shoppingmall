<header>
	<div class="container">
	    <div class="row" >
	        <div class="col-md-12"  align="right">
	        	<ol class="breadcrumb" style="display: table;">
	        	<%
	        	try{
	        	Integer check = (Integer)session.getAttribute("check");
	        	if(check == 0){%>
				 <li class="breadcrumb-item" ><a href="./pageLogin.jsp">Sign In</a>&nbsp/&nbsp<a href="./pageSignUp.jsp">Sign Up</a></li>
				 <%} else{%>
				 <li class="breadcrumb-item" ><a href="./LogoutPro.jsp">Logout</a></li>
				 <%} %>
	            <%}catch (Exception e){%>
	            <li class="breadcrumb-item" ><a href="./pageLogin.jsp">Sign In</a>&nbsp/&nbsp<a href="./pageSignUp.jsp">Sign Up</a></li>
	            <%}finally{%>
				 <%} %>
				</ol>
			</div>
	        <div class="col-md-12" align="center"> <a href="./index.jsp"><img src="./font.png" style="max-width: 25%; height: auto" alt=""></a></div>
		</div>
		<br>
	     <div class="row" style="max-height: 30px;  ">
	        <div class="col-md-3">
	        	<ol class="breadcrumb" style = "justify-content: center;">
				  <li class="breadcrumb-item" ><a href="./ManJacket.jsp">Man</a></li>
				</ol>
	        </div>
	        <div class="col-md-3">
	        	<ol class="breadcrumb" style = "justify-content: center;">
				  <li class="breadcrumb-item" ><a href="./WJacket.jsp">Woman</a></li>
				</ol>        
	        </div>
	        <div class="col-md-3">
	        	<ol class="breadcrumb" style = "justify-content: center;">
				  <li class="breadcrumb-item" ><a href="./orderList.jsp">My Page</a></li>
				</ol>
	        </div>
	        <div class="col-md-3">
	        	<ol class="breadcrumb" style = "justify-content: center;">
				  <li class="breadcrumb-item" ><a href="./pageQnA.jsp">QnA</a></li>
				</ol>
	        </div>
    	</div>
    		<hr>
    </div>
</header>