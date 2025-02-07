<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 데이터 수신
	String uid = request.getParameter("uid");
	
	// 데이터베이스 처리
	//String host = "jdbc:mysql://127.0.0.1:3306/studydb";
	//String user = "root";
	//String pass = "abc1234";
	
	try {
		//Class.forName("com.mysql.cj.jdbc.Driver");
		//Connection conn = DriverManager.getConnection(host, user, pass);
		
		//JNDI 서비스 객체 생성
		Context initCtx = new InitialContext();
		Context ctx = (Context)initCtx.lookup("java:comp/env"); //JNDI 기본환경 이름
		
		//커넥션 풀에 있는 커넥션을 가져오기
		DataSource ds = (DataSource) ctx.lookup("jdbc/studydb");
		Connection conn = ds.getConnection();
		
		String sql = "DELETE FROM `user1` WHERE `uid`=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, uid);
		
		psmt.executeUpdate();

		psmt.close();
		conn.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 목록이동
	response.sendRedirect("../list.jsp");
%>