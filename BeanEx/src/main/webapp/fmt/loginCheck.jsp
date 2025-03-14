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
<c:choose>
	<c:when test="${param.sl == 1 }">
		<p>${param.id }님 사용자로 로그인하셨습니다.</p>
	</c:when>
</c:choose>

<c:choose>
	<c:when test="${param.sl == 2 }">
		<p>${param.id }님 관리자로 로그인하셨습니다.</p>
	</c:when>
</c:choose>



</body>
</html>