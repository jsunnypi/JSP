<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		out.print("이름 : " + name + "<br>");
		
		String bd = request.getParameter("bd");
		String bd2 = request.getParameter("bd2");
		out.print("주민번호 : " + bd +"-"+ bd2+ "<br>");
		
		String id = request.getParameter("id");
		out.print("아이디 : "+ id + "<br>");
		
		String pw = request.getParameter("pw");
		String pw2 = request.getParameter("pwcheck");
		if(pw.equals(pw2)){
		out.print("비밀번호 : " + pw +"<br>");
		}
		else{
			out.print("비밀번호 : 다시 확인해주세요 <br>");
		}
		String email = request.getParameter("email");
		String com = request.getParameter("com");
		
		out.print("이메일 : " + email + "@" + com + "<br>" );
		
	
		String pn = request.getParameter("postnumber");
		out.print("우편번호 : " + pn + "<br>");
	
		String addr = request.getParameter("addr");
		String addr2 = request.getParameter("addr2");
		out.print("주소 : " + addr + addr2 + "<br>");
	
		String phone = request.getParameter("phone");
		out.print("핸드폰 번호 : " + phone + "<br>");
	
		String job = request.getParameter("job");
		out.print("직업 : " + job + "<br>");
	
		String interest[] = request.getParameterValues("interest");
		out.print("관심 분야 : " );
		
		for(String s : interest){
			out.print(s + " ");
		}
	
	
	
	
	%>
	
	
	
	<br>
	<br>
	
	<b><a href='javascript:history.go(-1)'>다시</a></b>
</body>
</html>