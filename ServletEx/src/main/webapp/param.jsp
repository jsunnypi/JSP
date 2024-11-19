<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script>
	function check(){
		if(document.frm.id.value == ""){
			alert("아이디는 필수 항목입니다.");
			document.frm.id.focus();
			return false;
		} else if(document.frm.age.value == ""){
			alert("나이를 입력해주세요");
			document.frm.age.focus();
			return false;
		} else if(isNaN(document.frm.age.value)){
			alert("나이는 반드시 숫자로 입력해야합니다.");
			document.frm.age.focus();
			return false;
		}
		
		
	}
	


</script>


</head>
<body>
	<form method="get" action="ParamServlet" name="frm">
		아이디 : <input type="text" name="id"> <br>
		나 이 : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check()">
	</form>
	
</body>
</html>