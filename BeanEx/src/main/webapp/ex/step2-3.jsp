<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL param 연습 3</title>
</head>
<body>
	1. 스크립틀릿 방식으로 파라미터 처리 <br>
	<%=request.getParameter("nick") %><br>
	<%=request.getParameter("age")+1 %>세<br>
	<hr>
	
	2. EL 방식으로 파라미터 처리 <br>
	${param.nick }<br>
	${param.age+1 }세 <br>
	
	<hr>
	
	<form action="step2-4.jsp">
		<input type="checkbox" name="food" value="삼겹살">삼겹살<br>
		<input type="checkbox" name="food" value="참이슬">참이슬<br>
		<input type="submit" value="전송">
	
	</form>
	
	
</body>
</html>