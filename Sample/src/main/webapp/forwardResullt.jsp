<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<%
	String age = request.getParameter("age");
	String name = (String)request.getAttribute("name");
%>


나이 : <%= age %> <br>
이름 : <%= name %> <br>
</body>
</html>