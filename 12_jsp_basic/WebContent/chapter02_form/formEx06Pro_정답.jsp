<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx06Pro</title>
</head>
<body>
	
	<%
		double height = Double.parseDouble(request.getParameter("height"));
		String withParents = request.getParameter("withParents");
		
		String result = "";
		if (height >= 120.0) result = "놀이기구를 이용할 수 있습니다.";
		if (height < 120.0) {
			if (withParents.equals("yes")) {
				result = "놀이기구를 이용할 수 있습니다.";
			}
			else if (withParents.equals("no")) {
				result = "놀이기구를 이용할 수 없습니다.";
			}
		}
	%>
	
	<h3><%=result %></h1>
	
</body>
</html>