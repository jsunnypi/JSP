<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:forward page="08_template.jsp" >
	<jsp:param value="10_info_view.jsp" name="CONTENTPAGE"/>
	<jsp:param value="정보보기" name="PAGETITLE"/>
</jsp:forward>
</body>
</html>