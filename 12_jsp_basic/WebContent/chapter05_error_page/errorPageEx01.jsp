<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorPage</title>
</head>
<body>

	<!-- 
	
		# 에러 페이지
		
			- 에러메세지를 화면에 그대로 노출시키면 웹 서버 관련 정보 및 데이터베이스의 이름 , 테이블명 , 쿼리문 등 민감정보들이 화면에 노출된다.
				[보안 취약점 , 해당 취약점은 서비스 오픈 불가]
			
			- 보안취약점 외에도 웹서비스를 이용하는 사용자에게 거부감을 준다.
			
			- 에러메세지의 페이지를 별도로 관리해야 한다. 
			
				[ 방법 ]
			
				1) web.xml에 아래의 코드를 추가한다.
			
				<error-page>
					<error-code>404</error-code>
					<location>/errorPage/404.jsp</location>	
				</error-page>
				<error-page>
					<error-code>500</error-code>
					<location>/errorPage/500.jsp</location>       
				</error-page>
				
					* location태그에서는 WebContent(/)를 기준으로 에러페이지의 절대경로를 작성한다.
				
				
				2) location에 적혀있는 실제 위치에 에러가 날 경우에 화면에 보여줄 페이지를 생성한다.
		

	 -->
	
	<%
		// 500 error code : 내부시스템 오류
		// System.out.println()
		
		/*
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url     = "jdbc:mysql://localhost:3306/login_ex?serverTimezone=UTC";
			String user    = "root";
			String passwd  = "root";
			conn = DriverManager.getConnection(url, user, passwd);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
	%>
	
	<!-- 404 error code : 페이지를 찾을 수 없음 -->
	<form action="abcde">
		<input type="submit" value="전송"> 
	</form>
	
	<a href="ggg.jsp">페이지 이동</a>
	
</body>
</html>