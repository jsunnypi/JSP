<%@page import="java.net.URLEncoder"%>
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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String loginCheck = request.getParameter("loginCheck");
	
	if(loginCheck.equals("user")){
%>
	<jsp:forward page="userMain.jsp">
		<jsp:param value='<%= URLEncoder.encode("전고객", "UTF-8") %>' name="userName"/>
	
	</jsp:forward>

<%
	} else{
%>
	<jsp:forward page="managerMain.jsp">
		<jsp:param value='<%= URLEncoder.encode("성관리", "UTF-8") %>' name="userName"/>
	
	</jsp:forward>

<%		
	}

%>
</body>
</html>