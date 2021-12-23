<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id     = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		// session.setAttribute(속성명, 값); 을 사용하여 세션을 등록한다.
		session.setAttribute("id", id);
		
	%>
	<h2>로그인</h2>
	<p>아이디   : <%=id %></p>
	<p>패스워드 : <%=passwd %></p>
	<p><a href="sessionEx02_03.jsp">마이페이지로 이동</a></p>
	<p><a href="sessionEx02_04.jsp">장바구니 이동</a></p>
	
	
</body>
</html>