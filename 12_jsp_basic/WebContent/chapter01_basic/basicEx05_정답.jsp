<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basicEx05 정답</title>
</head>
<body>

	<% 
		int i = 1;
	 %>
	 
		 <table border="5">
	 
	<%
	 	for (; i <= 10; i++){	 		
	%>		
			<tr align="center">
				<td><%=i %>번</td>
			</tr>
	<% 
	 	}
	%>
		</table>
</body>
</html>