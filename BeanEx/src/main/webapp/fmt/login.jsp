<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="loginCheck.jsp">
	아이디 : <input type="text" name="id"><br>
	암 호 : <input type="password" name="pw"><br>
	
	<input type="radio" name="sl" value="1"> 사용자
	<input type="radio" name="sl" value="2"> 관리자 <br>
	<input type="submit" value="로그인">

</form>
</body>
</html>