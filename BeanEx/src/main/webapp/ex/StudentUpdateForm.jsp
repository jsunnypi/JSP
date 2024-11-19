<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
<body>
<h1>학생정보</h1>
<form action="update" method="post">
	학번: <input type="text" name="student_no" value='${requestScope.student.studentNo }' readonly><br>
	
</form>

</body>
</html>