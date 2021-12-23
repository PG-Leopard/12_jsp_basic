<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>

	<h2>마이페이지</h2>
	<%
		// (등록된 값의 타입)session.getAttribute(속성명)을 통하여 세션의 값을 가져온다.;
		String id = (String)session.getAttribute("id");
	%>
	
	<%=id %>님 로그인 중

</body>
</html>

