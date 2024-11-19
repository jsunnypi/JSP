<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL</h1>
	<hr>
	<span>EL ver1</span><br>
	아이디 : ${param.id}<br>
	비밀번호: ${param["pw"] }<br>
	
	
	applicationScope: ${applicationScope.application_name }<br>
	sessionScope: ${sessionScope.session_name }<br>
	requestScope: ${requestScope.request_name } <br>
	pageScope: ${pageScope.page_name }
</html>