<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿 예제</h1>
	<%
		int num1 = 20;
		int num2 = 30;
		int add = num1 + num2;
		out.print(num1 + "+" + num2 + "=" + add);
	%>
	
	<hr>
	
	<h1> 선언문 예제 </h1>
	<%! 
		String str = "안녕하세요";
		int a = 5, b = -5;
		
		public int abs(int n){
			if(n < 0){
				n = -n; // 절댓값
			}
			return n;
		}
	%>
	
	<%
		out.print(str + "<br>");
		out.print(a + "의 절댓값: " + abs(a) + "<br>");
		out.print(b + "의 절댓값: " + abs(b) + "<br>");
	%>
	
	<hr>
	
	<h1> 지역 변수와 전역 변수 비교 </h1>
	
	<%
		String s = "재미있는 JSP";	
	%>
	
	<%
		out.print(s);
	%>
</body>
</html>





