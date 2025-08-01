<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> request 테스트 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<%
		
		out.println("서버 이름 : " + request.getServerName() + "<br>");
		out.println("포트 번호 : " + request.getServerPort() + "<br>");
		out.println("요청 방법 : " + request.getMethod() + "<br>");  // get / post
		out.println("프로토콜 : " + request.getProtocol() + "<br>");
		out.println("url : " + request.getRequestURL() + "<br>"); //	 http://서버 주소/uri
		out.println("uri : " + request.getRequestURI() + "<br>");
		out.println("클라이언트 IP 주소 : " + request.getRemoteAddr() + "<br>");
		out.println("클라이언트 웹 브라우저 : " + request.getHeader("User-Agent") + "<br>");
		
		%>
		
	</body>
	
</html>