<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean class="com.mission.javabeans.MovieBean" id="movie"></jsp:useBean>
    <jsp:setProperty property="*" name="movie"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 정보</h2>
<form>
<table>
	<tr>
		<td> 제목 </td>
		<td> <jsp:getProperty property="title" name="movie"/>
	</tr>
	
	<tr>
		<td> 가격 </td>
		<td> <jsp:getProperty property="price" name="movie"/>원
	</tr>
	
	<tr>
		<td> 감독 </td>
		<td> <jsp:getProperty property="director" name="movie"/>
	</tr>
	
	<tr>
		<td> 출연배우 </td>
		<td> <jsp:getProperty property="actor" name="movie"/>
	</tr>
	
	<tr>
		<td> 시놉시스 </td>
		<td> <jsp:getProperty property="synopsis" name="movie"/>
	</tr>
	
	<tr>
		<td> 장르 </td>
		<td> <jsp:getProperty property="genre" name="movie"/>
	</tr>
	
	



</table>
</form>
</body>
</html>