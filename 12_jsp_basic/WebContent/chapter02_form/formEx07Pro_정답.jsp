<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx07Pro</title>
</head>
<body>

	<% 
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		int num3 = Integer.parseInt(request.getParameter("num3"));
		
		int max = num1;
		
		if (num2 > max) max = num2;
		if (num3 > max) max = num3;
	%>
	<h3>가장 큰 숫자는 <%=max %></h3>
	
</body>
</html>