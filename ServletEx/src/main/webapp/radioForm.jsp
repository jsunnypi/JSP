<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="RadioServlet">
		성 별 : 
		<input type="radio" name="gender" value="남자" > 남자
		<input type="radio" name="gender" value="여자" checked > 여자 <br><br>
		메일 정보 수신 여부 : 
		<input type="radio" name="chk_mail" value="yes"> 수신
		<input type="radio" name="chk_mail" value="no" checked> 거부 <br><br>
		간단한 자기소개를 해주세요! <br>
		<textarea rows="4" cols="40" name="content"></textarea> <br><br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>