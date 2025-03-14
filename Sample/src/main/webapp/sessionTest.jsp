<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 세션 값 가져오기 </h3>
	
	<%
		String id = (String)session.getAttribute("id");
		String pwd = (String)session.getAttribute("pwd");
		int age = (Integer)session.getAttribute("age");
	%>
	
	id : <%= id %> <br>
	password : <%= pwd %> <br>
	age : <%= age %>
	
</body>
</html>