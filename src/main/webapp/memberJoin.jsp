<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="UTF-8">
		<title> 회원가입 </title>

	</head>

<!-- -------------------------------BODY-------------------------------------- -->	

	<body>
		
		<h2>회원 가입 양식</h2>
		<hr>
		<!-- method="get" URL에 데이터가 노출되어 보안에 취약 / method="post" URL에 데이터가 노출되지 않아 보안성이 높음 -->
		<form action="memberJoinOk.jsp" method="post"> 
			아이디 : <input type="text" name="memberid" required="required"><br><br> <!-- required 필수 입력 -->
			비밀번호 : <input type="password" name="memberpw"><br><br>
			이름 : <input type="text" name="membername"><br><br>
			나이 : <input type="text" name="memberage"><br><br>
			성별 : <input type="radio" name="gender" value="male" checked="checked">남자 
				  <input type="radio" name="gender" value="female">여자 
				  <br><br>
			이메일 : <input type="text" name="email1" size="10">@
													<select name="email2">
														<option value="naver.com">naver.com</option>
														<option value="daum.net">daum.net</option>
														<option value="gmail.com">gmail.com</option>
													</select>
			<br><br>
			취미 : <input type="checkbox" name="hobby" value="game">게임
				  <input type="checkbox" name="hobby" value="sports">운동
				  <input type="checkbox" name="hobby" value="book">독서
				  <input type="checkbox" name="hobby" value="movie">영화
			
			<br><br>
			자기소개 : <br>
			<textarea rows="5" cols="50" name="intro"></textarea>
			<br><br>
			
			<input type="submit" value="회원가입">
			<input type="reset" value="취소">
		</form>
		
	</body>
	
</html>