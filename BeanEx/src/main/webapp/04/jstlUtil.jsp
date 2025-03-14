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
<h1>안녕</h1>
 
<c:import url="http://localhost:8081/BeanEx/04/forTokens.jsp"></c:import>

<hr>

<c:url value="1.jfif" var="pic"></c:url>
<h3>${pic }</h3>
<img src="${pic }" width="150" height="150">

<hr>

<c:redirect url="forTokens.jsp">
</c:redirect>


</body>
</html>