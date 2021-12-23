<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>basicEx08</title>
</head>
<body>
	<p>
	[ 문제설명 ]<br><br>
	1. 2021 ~ 1900년까지 년도에 표기<br>
	2. 1 ~ 12까지 월에 표기<br>
	3. 1 ~ 31까지 일에 표기
	</p>
	
	<select>
		<%
			for (int i = 2021; 1900 <= i; i--){
		%>		
				<option><%=i%></option>
		<% 		
			}
		%>
	</select>년
	<select>
		<%
			for (int j = 1; j <= 12; j++){
		%>	
			<option><%=j%></option>
		<%	
			}
		%>
	</select>월
	<select>
		<%
			for (int k = 1; k <= 31; k++){
		%>
				<option><%=k%></option>
		<%		
			}
		%>
	</select>일
	
</body>
</html>