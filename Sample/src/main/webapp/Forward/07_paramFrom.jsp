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
	String value = request.getParameter("p1");
	if(value == null){
		value = "NOPARAM";
	}
%>
<jsp:forward page="08_paramTo.jsp">
	<jsp:param value="<%=value %>" name="p1"/>
</jsp:forward>
</body>
</html>