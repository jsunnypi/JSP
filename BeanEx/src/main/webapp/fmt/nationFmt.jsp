<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="now" value="<%= new java.util.Date() %>" />

톰캣 서버의 기본 로케일 : <%= response.getLocale() %><br>

<hr>

<fmt:setLocale value="ja_Jp"/>
로케일을 일본으로 설정한 후 로케일 확인 : <%= response.getLocale() %><br>
통화(currency) : <fmt:formatNumber value="10000" type="currency" /><br>
날짜 : <fmt:formatDate value="${now}"/>

<hr>

<fmt:setLocale value="en_US"/>
로케일을 미국으로 설정한 후 로케일 확인 : <%= response.getLocale() %><br>
통화(currency) : <fmt:formatNumber value="10000" type="currency" /><br>
날짜 : <fmt:formatDate value="${now}"/>
<hr>

<fmt:setLocale value="ko_KR"/>
로케일을 한국으로 설정한 후 로케일 확인 : <%= response.getLocale() %><br>
통화(currency) : <fmt:formatNumber value="10000" type="currency" /><br>
날짜 : <fmt:formatDate value="${now}"/>



















</body>
</html>