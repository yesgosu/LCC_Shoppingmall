<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%request.setCharacterEncoding("UTF-8"); %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String data = request.getParameter("buy");
			String dataCart = request.getParameter("cart");
			String size = request.getParameter("size");
			String count = request.getParameter("count");

			//String[] data2 = data.split("-");
			//out.print(data);
			//out.print("<br>");

			//for(int i = 0; i<data2.length; i++){
			//	out.print(data2[i]+"<br>");
			//}

		%>
	<%
	try{
	Integer check = (Integer)session.getAttribute("check");
	if(check == 0 || check == null){
		%>
		<script>
			alert("로그인이 필요합니다");
			history.back();
		</script>
	<%}
	else if (request.getParameter("buy") == null && check == 1){
		response.sendRedirect("./cartPro.jsp"+"?code="+dataCart+"&size="+size+"&count="+count);
	}
	else if (request.getParameter("cart") == null && check == 1){
		response.sendRedirect("./orderConfirm.jsp"+"?code="+data+"&size="+size+"&count="+count);
	}
	} catch (Exception e){ %>
			<script>
			alert("로그인이 필요합니다");
			history.back();
			</script>
	<%}%>
</body>
</html>