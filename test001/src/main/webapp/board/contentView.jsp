<%@ page import="com.jsp.board.BoardDTO"%>
<%@ page import="com.jsp.board.BoardDAO"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">


<style type="text/css">
table {
	width: 50% !important;
	margin-left: 25%;
	margin-right: 25%;
}
</style>

</head>
<body>
	<%
	String strID = request.getParameter("bId");
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO dto = dao.contentView(strID);

	request.setAttribute("content_view", dto);
	%>

	<br>
	<br>

	<form action="modifyForm.jsp" method="post" accept-charset="UTF-8">
		<input type="hidden" name="bId" value="${content_view.bId }">
		<input type="hidden" name="bName" value="${content_view.bName }">
		<input type="hidden" name="bHit" value="${content_view.bHit }">
		<input type="hidden" name="bTitle" value="${content_view.bTitle }">
		<input type="hidden" name="bContent" value="${content_view.bContent}">


		<table class="table table-bordered">
			<tr>
				<th scope="col">번호</th>
				<td>${content_view.getbId()}</td>
			</tr>
			<tr>
				<th scope="col">조회수</th>
				<td>${content_view.getbHit()}</td>
			</tr>
			<tr>
				<th scope="col">이름</th>
				<td>${content_view.getbName()}</td>
			</tr>
			<tr>
				<th scope="col">제목</th>
				<td>${content_view.getbTitle()}</td>
			</tr>
			<tr>
				<th scope="col">내용</th>
				<td>${content_view.getbContent()}</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;
					<a href="boardList.jsp">목록보기</a>&nbsp;&nbsp; <a
					href="delete.jsp?bId=${content_view.bId}">삭제</a>&nbsp;&nbsp;</td>
			</tr>
		</table>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>





















