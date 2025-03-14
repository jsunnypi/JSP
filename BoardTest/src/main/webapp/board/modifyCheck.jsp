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
	
	<%--
		1. 넘어온 데이터 받기
		2. DAO 객체 생성하기
		3. write 메소드 호출 후 결과값 얻기
		4. 결과값을 얻은 후에 로직 처리하기 
		  (boardList.jsp로 이동하기)
	 --%>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		int result = dao.write(bName, bTitle, bContent);
	
		if(result == 1){
	%>
			<script>
				alert('글이 수정되었습니다.');
				window.location = 'boardList.jsp';
			</script>
	
	<%
		}else{
	%>
			<script>
				alert('글이 수정되지 않았습니다.');
				window.location = 'boardList.jsp';
			</script>
	<%
		}
	%>
	
	
</body>
</html>