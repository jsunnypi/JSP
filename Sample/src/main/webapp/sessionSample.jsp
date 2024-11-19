<%@page import="java.util.Enumeration"%>
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
	session.setAttribute("name_1", "저는 첫번째 세션입니다.");
	session.setAttribute("name_2", "저는 두번째 세션입니다.");
	session.setAttribute("name_3", "저는 세번째 세션입니다.");

	out.print("<h2> >> 세션 값을 삭제하기 전 << </h2>");

	Enumeration names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}

	// 이름을 지정하여 세션에 저장된 객체를 제거함
	session.removeAttribute("name_2");

	out.print("<h2> >> 특정 세션 값을 삭제한 후 << </h2>");

	names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}

	/*	
		// 설정된 모든 세션 값들 삭제 --ex) 로그아웃
		session.invalidate();
		
		out.println("<hr>");
		
		out.println("<h2> >> 세션 값을 삭제한 후 << </h2>");
		
		if(request.isRequestedSessionIdValid() == true){
			out.print("<h2> 세션 아이디가 유효합니다. </h2>");
		} else {
			out.print("<h2> 세션 아이디가 유효하지 않습니다. </h2>");
		}
		
	*/
	%>
</body>
</html>