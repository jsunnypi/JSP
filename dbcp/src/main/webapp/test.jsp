<%@page import="java.sql.Connection"%>
<%@page import="com.guri.dao.MemberDAO"%>
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
		MemberDAO member = MemberDAO.getInstance();
		Connection conn = member.getConnection();
		out.println("DB 연동 성공");
	%>
</body>
</html>