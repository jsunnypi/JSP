<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문조사 결과</h1>
	<%
		request.setCharacterEncoding("UTF-8"); 
		
		String name = request.getParameter("name"); // researchForm에서 넘어오는 parameter(name)
		out.print("이름 : " + name + "<br>");
	
		String gender = request.getParameter("gender");
		
		out.print("성별 : ");
		if(gender.equals("male")){
			out.print("<b>남자</b><br>");
		}
		else {
			out.print("<b>여자</b><br>");
		}
		
		String season[] = request.getParameterValues("season"); // 값이 여러개일때(ex. checkbox)
		out.print("당신이 좋아하는 계절은 ");
		for(String s : season){
			int n = Integer.parseInt(s);
			
			switch(n){
			case 1:
				out.print("<b>봄입니다.</b>");
				break;
			case 2:
				out.print("<b>여름입니다.</b>");
				break;
			case 3:
				out.print("<b>가을입니다.</b>");
				break;
			case 4:
				out.print("<b>겨울입니다.</b>");
				break;	
			}
		}
	%>
	
	<b><a href='javascript:history.go(-1)'>다시</a></b>
	
	
	
</body>
</html>














