<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%!
    	String str = "안녕하세요";

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- jsp 주석 -->
	<%
		out.print(str);
	%>
	<br>
	<%= str %>
</body>
</html>