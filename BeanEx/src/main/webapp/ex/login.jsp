<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>LOGIN</h1>
<hr>
<form action="loginOK.jsp" method="post">
	<input type="text" name="id" placeholder="아이디를 입력해주세요"><br>
	<input type="text" name="pw" placeholder="비밀번호를 입력해주세요"><br>
	<input type="submit" value="로그인">
</form>

<%
	application.setAttribute("application_name", "application_value");
	session.setAttribute("session_name", "session_value");
	request.setAttribute("request_name", "request_value");
	pageContext.setAttribute("page_name", "page_value");
%>

</body>
</html>