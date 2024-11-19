<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.*"%>
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
	Random random = new Random();
	int number = random.nextInt();
	String numberString = Integer.toString(number);
	
	response.sendRedirect(request.getContextPath()+"/Redirect/12_2_receiveParam.jsp?num="
									+URLEncoder.encode(numberString));


%>
</body>
</html>