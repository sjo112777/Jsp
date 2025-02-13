<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>1.fileUpload</title>
	<!-- 
		날짜 : 2025/02/10
		이름 : 김철학
		내용 : JSP 파일 업로드 실습하기

		아래 라이브러리 추가(https://mvnrepository.com 에서 라이브러리 검색)
 		 - commons-io-2.18.0.jar
		 - commons-fileupload2-core-2.0.0-M2.jar
		 - commons-fileupload2-jakarta-servlet6-2.0.0-M2.jar
	 -->
</head>
<body>
	<h3>1.파일업로드 실습</h3>
	
	<h4>파일 전송 폼</h4>
	<form action="./proc/fileUpload.jsp" method="post" enctype="multipart/form-data">
		<input type="text" name="title" placeholder="제목 입력"><br>
		<input type="text" name="name" placeholder="이름 입력"><br>
		<input type="file" name="file"><br>
		<input type="submit" value="파일전송">
	</form>
</body>
</html>