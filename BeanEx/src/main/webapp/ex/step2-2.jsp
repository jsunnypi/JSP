<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL param 연습 2</title>
</head>
<body>
	<a href="step2-1.jsp">step2-1 이동</a>
<hr>
	1. 스크립틀릿 방식으로 파라미터 전달받음 <br>
	<%=request.getParameter("name") %><br>
	<%=request.getParameter("address") %><br>
	<br><br>
	2. EL 방식으로 파라미터 전달받음 <br>
	${param.name } <br>
	${param.address }
	
	<hr>
	<form action="step2-3.jsp">
	닉네임 <input type="text" name="nick"><br>
	나이 <input type="text" name="age">
	<input type="submit" value="전송"></form>
</body>
</html>