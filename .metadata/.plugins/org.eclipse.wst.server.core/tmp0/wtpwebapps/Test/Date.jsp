<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Calendar date = Calendar.getInstance();
		SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");
				
	%>
	
	<br>
	<%= date.getTime() %>
	<br>
	오늘은 <b> <%= today.format(date.getTime()) %></b> 입니다 <br>
	지금 시각은 <b><%= now.format(date.getTime()) %></b>
</body>
</html>