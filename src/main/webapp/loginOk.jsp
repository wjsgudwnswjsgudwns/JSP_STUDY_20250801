<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
	
		<meta charset="UTF-8">
		<title>로그인 확인</title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
			// 클라이언트가 입력한 아이디값 가져오기
			String memberId = request.getParameter("loginId");
			// 클라이언트가 입력한 비밀번호값 가져오기
			String memberPw = request.getParameter("loginPw");
		%>
		<h2>로그인 아이디 : <%= memberId %> </h2>
		<h2>로그인 비밀번호 : <%= memberPw %> </h2>
		
	</body>
	
</html>