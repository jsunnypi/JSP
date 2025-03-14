<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
    <%@ page import ="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Random random = new Random();
		int number = random.nextInt();
		String numberString = Integer.toString(number);
	
	%>
<script >
	location.href = "<%= request.getContextPath()%>/Redirect/12_2_receiveParam.jsp"+
						"?num=<%=URLEncoder.encode(numberString)%>";
	
</script>

</body>
</html>