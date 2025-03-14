<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 기존 방식 </h1>
당신이 입력한 정보는 <br>
<%= request.getParameter("id") %> <br>
<%= request.getParameter("pwd") %> <br>
<hr>

<h1>EL 방식 </h1>
당신이 입력한 정보는 <br>
${param.id }<br>
${param["pwd"] }<br>

</body>
</html>