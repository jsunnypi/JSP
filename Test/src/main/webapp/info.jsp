<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		out.print("당신의 이름은 <b> " + name + "</b>입니다 <br>");
		
		String addr = request.getParameter("addr");
		out.print("당신의 주소는 <b> " + addr + "</b>입니다<br>");
		
		
		
	
	%>
</body>
</html>