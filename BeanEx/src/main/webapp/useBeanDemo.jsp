<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="com.guri.javabean.MemberBean" id="member" />
	<hr>
	액션 태그로 프로퍼티 값 가져오기 <br><br>
	이름 : <jsp:getProperty property="name" name="member"/> <br>
	<jsp:setProperty property="name" name="member" value="아파트"/><br>
	이름 : <jsp:getProperty property="name" name="member"/> <br>
	
	
	
	<%-- 자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br>
	
	<hr>
	자바 빈 객체에 정보 저장후 출력히기 <br><br>
	<%
		member.setName("재쓰비");
		member.setUserid("jsbeeee");
	%>
	
	<hr>
	자바 빈 객체 수정 후 저장된 정보 출력하기 <br><br>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br> --%>
	
	
	

	
	
</body>
</html>