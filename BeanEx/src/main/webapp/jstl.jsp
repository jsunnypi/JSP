<%@page import="com.guri.javabean.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="hello" />
<br>
<c:set var="msg" value="jsp" />
\${msg} = ${msg} <br> <!-- \(escape 문자)는 띄어쓰기 전까지 인식 -->

<c:set var="age">30</c:set>
\${age} = ${age } <br>

<c:set var="member" value="<%= new com.guri.javabean.MemberBean() %>"></c:set>
<c:set target="${member }" property="name" value="로제" />
<c:set target="${member }" property="userid">0rose0</c:set>

\${member } = ${member }<hr>

<c:set var="add" value="${10+5 }"  />
\${add } = ${add } <br>

<c:set var="flag" value="${10>5 }" />
\${flag } = ${flag }





</body>
</html>