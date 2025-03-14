<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Login</title>
</head>
<body>
	<%
		String id = "lee";
		String pwd = "1234";
		String name = "홍길동";
			
		request.setCharacterEncoding("UTF-8");
		
		if(id.equals(request.getParameter("id")) 
				&& pwd.equals(request.getParameter("pwd"))){
			response.sendRedirect("main.jsp?name=" + URLEncoder.encode(name, "UTF-8"));
			
			
		} else{
			response.sendRedirect("loginForm.jsp");
		}
		
		
	%>
</body>
</html>