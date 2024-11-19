<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> 게시판 글쓰기 </h1>
	
	<form method="post" action="boardWrite.jsp">
	<table>
		<tr>
			<td> 작성자 </td>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
			<td> 비밀번호 </td>
			<td><input type="password" name="pass"></td>
		</tr>
	
		<tr>
			<td> 이메일 </td>
			<td><input type="text" name="email"></td>
		</tr>
	
		<tr>
			<td> 글 제목 </td>
			<td><input type="text" name="title"></td>
		</tr>
		
		<tr>
			<td> 글 내용 </td>
			<td><input type="text" name="content" size="40"></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="등록"></td>
			<td><input type="reset" value="다시 작성"></td>
		</tr>
		
		
	</table>
</form>
</body>
</html>