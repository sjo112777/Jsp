<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2.dbcp</title>
	<!-- 
		날짜 : 2025/02/07
		이름 : 김철학
		내용 : JSP 데이터베이스 커넥션 풀(DBCP) 실습하기
		
		커넥션 풀 설정
		 - Tomcat(Servers) - context.xml 파일 아래 내용 설정
		 
		<Resource
	    	name="jdbc/shop"
	    	auth="Container"
	    	type="javax.sql.DataSource"
	    	driverClassName="com.mysql.cj.jdbc.Driver"
	    	url="jdbc:mysql://127.0.0.1:3306/shop"
	    	username="root"
	    	password="1234"
	    	maxTotal="13"
	    	maxIdle="13"
	    	maxWaitMillis="3000"
	    	/>
		
		maxTotal : 풀에 생성되는 최대 커넥션 갯수
		maxIdle : 풀에 유지되는 커넥션 갯수
		maxWaitMillis : 풀에서 커넥션을 기다리는 대기 시간
	 -->
</head>
<body>
	<h3>2.dbcp</h3>
	
	<h4>user1</h4>
	<a href="./user1/list.jsp">user1 목록</a>
	
	<h4>shop</h4>
	<a href="./shop">shop</a>
		
</body>
</html>