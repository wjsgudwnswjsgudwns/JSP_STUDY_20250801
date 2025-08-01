<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 회원 가입 확인 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		<h2>회원 가입 정보</h2>
		<hr>
		<%
		String id = request.getParameter("memberid");
		String pw = request.getParameter("memberpw");
		String name = request.getParameter("membername");
		String age = request.getParameter("memberage");
		String gender = request.getParameter("gender");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String intro = request.getParameter("intro");
		
		String[] hobbies = request.getParameterValues("hobby");
		
		 %>
		<ul>
			<li>아이디 : <%= id%></li>
			<li>비밀번호 : <%= pw%></li>
			<li>이름 : <%= name%></li>
			<li>나이 : <%= age%></li>
			<li>성별 : <%= gender%></li>
			<li>이메일 : <%= email1%>@<%= email2%></li>
			<li>자기소개 : <%= intro %></li>
			<li>취미 : {
					<%
					if(hobbies != null) {
						for (String hobby : hobbies){
						  %> <%= hobby %>   <%
						}
					} else {
						out.print("null"); // System.out.println("null");을 하면 콘솔 창에 찍힘 -> out.print("null");
					}
					%>
					}
			</li>
		</ul>
		
		
	</body>
	
</html>