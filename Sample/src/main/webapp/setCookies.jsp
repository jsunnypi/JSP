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
		// 1. 쿠키 생성
		Cookie c = new Cookie("id", "홍길동");
	
		// 2. 쿠키 유효 기간 설정
		c.setMaxAge(60*60);
		
		// 3. 클라이언트에 쿠키 전송
		response.addCookie(c);
		
		response.addCookie(new Cookie("pwd", "test1234"));
		response.addCookie(new Cookie("age", "20"));
	
	%>
</body>
</html>