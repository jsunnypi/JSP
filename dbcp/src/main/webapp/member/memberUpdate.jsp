<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2>회원 정보 변경</h2>
<form action="memberUpdate.do" method="post" id="frm">
	<table>
		<tr>
			<td>이름 </td>
			<td>
				<input type="text" name="name" value="${mvo.name}" readonly size="20">  <!-- 이름 수정 못하게 readonly 사용 -->
			</td>
		</tr>
		
		<tr>
			<td> 아이디 </td>
			<td>
				<input type="text" name="userid" size="20" value="${mvo.userid}" readonly>
 			</td>
		</tr>
		<tr>
			<td>암호</td>
			<td>
				<input type="password" name="pwd" size="20"> *
			</td>
		</tr>	
		
		<tr height="30">
			<td width="80">암호확인 </td>
			<td>
				<input type="password" name="pwd_check" size="20">*
			</td>
		</tr>	
		
		<tr>
			<td>이메일 </td>
			<td>
				<input type="text" name="email" size="20" value="${mvo.email}">
			</td>
		</tr>	
		<tr>
			<td>전화번호 </td>
			<td>
				<input type="text" name="phone" size="20" value="${mvo.phone}">
			</td>
		</tr>	
		
		<tr>
			<td>등 급 </td>
			<td>
				<c:choose>
				<c:when test="${mvo.admin==0}">
					<label><input type="radio" name="admin" value="0" checked> 일반회원</label>
					<label><input type="radio" name="admin" value="1" > 관리자</label>				
			
			
				</c:when>
			
				<c:otherwise>
					<label><input type="radio" name="admin" value="0" > 일반회원</label>
					<label><input type="radio" name="admin" value="1" checked> 관리자</label>	
				</c:otherwise>
			
				</c:choose>			
			</td>
		</tr>	
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="확인" onclick="return joinCheck();">
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" value="취소" onclick="location.href='main.jsp'">
			</td>
		</tr>	
					
	</table>
</form>
</body>
</html>