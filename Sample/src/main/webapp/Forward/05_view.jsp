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
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI = "/Forward/a.jsp";
	} else if(code.equals("B")){
		viewPageURI = "/Forward/b.jsp";
	} else if(code.equals("C")){
		viewPageURI = "/Forward/c.jsp";
	} 
%>

<jsp:forward page="<%= viewPageURI %>" />
</body>
</html>