<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
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
		
		//  String[] hobbies = request.getParameterValues("hobby");
		
		// 취미 체크 박스를 Map자료 구조로 받기
		Map<String,String[]> hobbymap = request.getParameterMap();
		
		// 취미 체크박스를 열거형 자료 구조로 받기 -> 모든 parameter의 이름 가져옴
		Enumeration<String> hobbyEnum = request.getParameterNames();
		
		 %>
		<ul>
			<li>아이디 : <%= id%></li>
			<li>비밀번호 : <%= pw%></li>
			<li>이름 : <%= name%></li>
			<li>나이 : <%= age%></li>
			<li>성별 : <%= gender%></li>
			<li>이메일 : <%= email1%>@<%= email2%></li>
			<li>자기소개 : <%= intro %></li>
			<li>취미 : 
					<%
					if(hobbymap.get("hobby") == null) {
						out.print("취미없음");
					} else {
						for (String hobby : hobbymap.get("hobby")) {
							out.println(hobby);
							}
						}
					
					%>
			</li>
			
			<li>취미(Enumeration) : 
					<%
					String[] hobbies = null;
					if(!hobbyEnum.hasMoreElements()){
						out.println("Null");
					} else {
						while(hobbyEnum.hasMoreElements()) {
							String hobby = hobbyEnum.nextElement();
							//out.println(hobby);
							if(hobby.equals("hobby")){
								hobbies = request.getParameterValues(hobby);
							}
						}
						if (hobbies != null){
							for(String hobby : hobbies){
								out.println(hobby);
						}
						
						}else {
							out.println("Null");
					}
					}
					%>
			</li>
			
		</ul>
		
		
	</body>
	
</html>