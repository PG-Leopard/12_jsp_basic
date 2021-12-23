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
		String me = request.getParameter("me");
		if (me.equals("바위")) System.out.println("비겼습니다.");
		else if (me.equals("보")) System.out.println("이겼습니다.");
		else if (me.equals("가위")) System.out.println("졌습니다.");
		else System.out.println("잘못된 입력값 입니다. 가위 혹은 바위 혹은 보를 입력해주세요.");
	%>

</body>
</html>