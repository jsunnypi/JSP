<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select Form 예제</h1>
	<form method="post" action="select.jsp">
		직 업 :
		<select id="job" name="job" size="1">
			<option value=""> 선택하세요 </option>
			<option value="학생">학생</option>
			<option value="주부">주부</option>
			<option value="언론인">언론인</option>
			<option value="군인">군인</option>
			<option value="바리스타">바리스타</option>
			<option value="기타">기타</option>
		</select>
	
		<br><br>
		
		관심 분야 : 
		<select id="interest" name="interest" size="4" multiple>
			<option value="피아노">피아노</option>
			<option value="수영">수영</option>
			<option value="배드민턴">배드민턴</option>
			<option value="테니스">테니스</option>
			<option value="스케이트">스케이트</option>
		</select>
		
		<br><br>
		
		<input type="submit" value="제출">
	</form>
</body>
</html>