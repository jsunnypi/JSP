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
	
	String item[] = request.getParameterValues("item");
	out.print("당신이 좋아하는 악세사리는 ");
	for(String s : item){
		out.print(s+", ");
	} out.print("입니다.");
	
	
	%>
</body>
</html>