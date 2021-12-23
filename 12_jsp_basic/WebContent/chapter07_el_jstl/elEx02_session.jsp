<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<%
		session.getAttribute("id");
	%>
	<p>session id : ${sessionScope.id}</p>
	<p>session name : ${sessionScope.name}</p>
	
</body>
</html>