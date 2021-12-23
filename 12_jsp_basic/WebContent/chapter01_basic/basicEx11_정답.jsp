<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basicEx11</title>
</head>
<body>
	
	<% 
		int day = 0;
		for(int i = 1; i <= 12; i++){
	%>
			<%=i %>월 : 
	<%
			if (i == 2) day = 28;	
			else if (i == 4 || i == 6 || i == 9 || i == 11) day = 30;	
			else day = 31;
	%>
			<select>
	<%
			for (int j = 1; j <= day; j++){
				if (j != day) {
	%>			
					<option><%=j %></option>
	<%
				}		
				else if (j == day) {
	%>
					<option selected="selected"><%=j %></option>
	<% 		 	
				}
			}
	%>
			</select><br>
	<%		
		}	
	%>	
			
</body>
</html>