<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response Info</title>
</head>
<body>
	페이지 이동 <br>
	<%
		response.sendRedirect("http://www.naver.com");
	
	%>
</body>
</html>