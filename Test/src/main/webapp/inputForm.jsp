<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20241114 예제1</title>
</head>
<body>
	<h1>회원 가입</h1>
	<form method="post" action="inputlist.jsp">
		<table>
			<tr>
				<td> 이름 </td>
				<td> 
					<input type="text" name="name" >
				</td>			
			</tr>
			
			<tr>
				<td> 주민등록번호 </td>
				<td>
					<input type="text" name="bd">
				- 
					<input type="password" name="bd2">
				</td>
			</tr>
			
			<tr>
				<td> 아이디 </td>
				<td>
					<input type="text" name="id" >
				</td>
			</tr>
			
			<tr>
				<td> 비밀번호 </td>
				<td>
					<input type="password" name="pw" >
				</td>
			</tr>
			
			<tr>
				<td> 비밀번호 확인 </td>
				<td>
					<input type="password" name="pwcheck" >
				</td>
			</tr>
			
			<tr>
				<td> 이메일 </td>
				<td>
					<input type="text" name="email" >
				 @ 
					<input type="text" >
				
					<select id="email" name="com" size="1">
						<option value="직접">직접 입력</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td> 우편번호 </td>
				<td>
					<input type="text" name="postnumber" >
				</td>
			</tr>
			
			<tr>
				<td> 주소 </td>
				<td>
					<input type="text" name="addr" >
				
					<input type="text" name="addr2" >
				</td>
			</tr>
			
			<tr>
				<td> 핸드폰 번호 </td>
				<td>
					<input type="text" name="phone" >
				</td>
			</tr>
			
			<tr>
				<td> 직업 </td>
				<td>
					<select name="job" size="4">
						<option value="학생">학생</option>
						<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
						<option value="공무원">공무원</option>
						<option value="언론인">언론인</option>
			
					</select>
				</td>
			</tr>
			
			<tr>
				<td> 메일 / SMS 정보 수신</td>
				<td>
					<input type="radio" name="agree" value="ok"> 수신 
					<input type="radio" name="agree" value="no"> 수신 거부					
				</td>
			</tr>
			
			<tr>
				<td> 관심 분야 </td>
				<td>
					<input type="checkbox" name="interest" value="생두"> 생두
					<input type="checkbox" name="interest" value="원두"> 원두
					<input type="checkbox" name="interest" value="로스팅"> 로스팅
					<input type="checkbox" name="interest" value="핸드드립"> 핸드드립
					<input type="checkbox" name="interest" value="에스프레소"> 에스프레소
					<input type="checkbox" name="interest" value="창업"> 창업
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td align="center">
					<input type="submit" value="회원가입" >
				
					<input type="reset" value="취소">
				</td>
			</tr>
					
		</table>
	
	</form>
	
</body>
</html>