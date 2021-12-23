<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basicEx09</title>
</head>
<body>
	
	<%
		Random ran = new Random();
		int rNum = ran.nextInt(12) + 1;
	%>
		<%=rNum %>월<select>
	<%
		if (rNum == 2){	
		
			for (int i = 1; i <= 28; i++){
	%>			
				<option><%=i %></option>
	<% 		
			}
		}
		else if (rNum == 4 || rNum == 6 || rNum == 9 || rNum == 11){
			
			for (int i = 1; i <= 30; i++){
	%>			
				<option><%=i %></option>
	<% 		
			}
		}
		else {
			
			for (int i = 1; i <= 31; i++){
	%>			
				
			<option><%=i %></option>
	<% 			
			}
		}
	%>				
		</select>일
	
</body>
</html>