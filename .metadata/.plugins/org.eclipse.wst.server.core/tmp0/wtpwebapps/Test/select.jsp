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
		request.setCharacterEncoding("UTF-8");
		
		String job = request.getParameter("job");
		out.print("당신의 직업은 <b>" + job + "</b> 입니다.<br>");
		
		String interest[] = request.getParameterValues("interest");
	
		out.print("당신의 관심 분야는 " );
		for(int i=0 ; i<interest.length; i++){
			out.print(interest[i]);
			if(i != interest.length -1){
				
				out.print(", ");
			} else {
				out.print("입니다.");
			}
		}
		
		/* for(String s : interest){
			out.print(s+", ");
		}out.print("입니다.");
		 */
	%>

</body>
</html>