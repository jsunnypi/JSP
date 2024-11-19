<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 예제</title>
</head>
<body>
<%
	if(session.getAttribute("id")==null){ %>
<form method="post" action="member_ok.jsp">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id" placeholder="아이디" required /> <br>
	<label for="pass">비밀번호</label>
	<input type="password" name="pass" id="pass" placeholder="비밀번호" required /> 
	<br>
	<input type="submit" value="로그인" />
</form>
<% 	} else{ %>
<form method="post" action="logout.jsp">
	<%= session.getAttribute("id") %> 님 환영합니다~ 
	<input type="submit" value="로그아웃" />
</form>

<%
}
%>
</body>
</html>