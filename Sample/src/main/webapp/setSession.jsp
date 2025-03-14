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
		session.setAttribute("id", "roseee");
		session.setAttribute("pwd", "1234");
		session.setAttribute("age", 23);
	
	%>
	
	<h2> 세션 생성 </h2>
	
</body>
</html>