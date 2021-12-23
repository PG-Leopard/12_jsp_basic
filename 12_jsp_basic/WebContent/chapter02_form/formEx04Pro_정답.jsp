<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>연습문제</title>
</head>
<body>
  
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String dbId = request.getParameter("dbId");
		String dbPw = request.getParameter("dbPw");
		
		String data = "";
		if (id.equals(dbId) && pw.equals(dbPw)){
			data = "로그인되었습니다.";
		}
		else data = "id, pw를 다시 확인해주세요.";
	%>
		<h2>결과 : <%=data %></h2>
	
	


</body>
</html>