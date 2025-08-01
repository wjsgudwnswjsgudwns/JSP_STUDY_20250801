<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> JSP 문법 연습 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		request.setCharacterEncoding("UTF-8");
		
		// 20세 이상이면 "성년" 아니면 "미성년"으로 출력
		// 단, 성년은 빨간색,폰트 사이즈 30 / 미성년은 파란색으로 출력,폰트 사이즈 30 -> HTML/CSS
		int age = Integer.parseInt(request.getParameter("age"));
		if(age >= 20){
		%>
		
		<!-- ---------HTML 영역--------  -->
		<span style="font-size: 30px;color:red;">성년</span>
		
		<%	
		} else {
		%>
		
		<!-- ---------HTML 영역--------  -->
		<span style="font-size: 30px;color:blue;">미성년</span>	
			
		<%	
		}
		
		%>
		
	</body>
	
</html>