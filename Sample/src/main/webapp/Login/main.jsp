<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("loginUser") == null){
			response.sendRedirect("loginForm.jsp");
		} else {
	%>	
	
	<%=session.getAttribute("loginUser") %> 님 안녕하세요! <br>
	오늘도 즐거운 하루 되세요~~~~ <br>
	사랑합니다 고객님~~~~~~~<br>
	
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	
	<% 	 
		}
	%>
	
</body>
</html>