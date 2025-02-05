<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cookie</title>
	<!-- 
		날짜: 2025/02/05
		이름: 손준오
		내용: 5장 JSP 쿠키세션 실습
	 -->
</head>
<body>
	<h3>1.쿠키 실습</h3>
	
	<h4>쿠키 로그인 실습</h4>
	<form action="./proc/createCookie.jsp" method="post">
		<input type="text" name="uid" placeholder="아이디 입력"><br>
		<input type="password" name="pass" placeholder="비밀번호 입력"><br>
		<input type="submit" value="로그인"><br>
	</form>
	
</body>
</html>