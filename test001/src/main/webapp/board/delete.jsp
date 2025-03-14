<%@page import="com.jsp.board.BoardDAO"%>
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
	String strID = request.getParameter("bId");
	BoardDAO dao = BoardDAO.getInstance();
	int result = dao.delete(strID);
	
	if(result == 1){
%>
	<script>
		alert('해당글이 삭제되었습니다.');
		window.locaion = 'boardList.jsp';
	</script>

<%
	} else {
%>
	<script>
		alert('해당글이 삭제되었습니다.');
		window.locaion = 'boardList.jsp';
	</script>
<%
	}
%>


</body>
</html>