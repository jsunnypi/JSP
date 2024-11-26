<%@page import="com.jsp.board.BoardDTO"%>
<%@page import="com.jsp.board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- JSTL --%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 부트스트랩 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Insert title here</title>

</head>
<body>

<%
	
	// 1. DAO 객체 생성하기 
	// 2. boardList 메소드 호출하여 ArrayList 얻기
	// 3. list를 request영역에 바인딩하기
	
	BoardDAO dao = BoardDAO.getInstance();
	ArrayList<BoardDTO> list = dao.boardList();
	
	request.setAttribute("dtos", list);
	
%>
	
	<br><br><h1 style="text-align : center;">나의 게시판</h1><br><br>
	
	<table class="table table-bordered">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">이름</th>
	      <th scope="col">제목</th>
	      <th scope="col">날짜</th>
	      <th scope="col">조회수</th>
	    </tr>
	  </thead>
	  <tbody>
	  	
	   
	  <c:forEach var="dto" items="${dtos}" >
	  <%--items 속성에 컬렉션을 넣어주면 순서대로 반복이 된다. --%>
	  	
	  	<tr>
	  		<td>${dto.bId}</td>
	  		<td>${dto.bName }</td>
	  		<td>
	  			<a href="contentView.jsp?bId=${dto.bId}">${dto.bTitle }</a>
	  		</td>
	  		<td>${dto.bDate }</td>
	  		<td>${dto.bHit }</td>
	  	</tr>
	  
	  </c:forEach>
	   
	   
	    <tr>
	    	<td colspan="5" style="text-align: center"> 
	    		<a href="writeForm.jsp">글작성</a> 
	    	</td>
	    </tr>
	  </tbody>
	</table>
	
  	<!-- 부트스트랩 자바스크립트 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>