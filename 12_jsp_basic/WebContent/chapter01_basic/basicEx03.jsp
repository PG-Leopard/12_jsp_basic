<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 속성</title>
</head>
<body>

	<!-- 자바 클래스는 ctrl + space로 import 해서 사용. -->
	
	<% 
		Random ran = new Random();
		String[] languages = {"JSP" , "JAVA" , "HTML" , "CSS" , "JS" , "MYSQL"};
		int r = ran.nextInt(6);
	%>
	<%=languages[r] %> 언어가 재미있다!
	
	<hr>
	
	<% 
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(date);
	%>
	오늘의 날짜 : <%=strDate %>
	
</body>
</html>