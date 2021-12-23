<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx09Pro_정답</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String name      = request.getParameter("name");
		String id        = request.getParameter("id");
		String pwd       = request.getParameter("pwd");
		String age       = request.getParameter("age");
		String gender    = request.getParameter("gender");
		if (gender.equals("1")) gender = "남자";
		else if (gender.equals("2")) gender = "여자";
		
		String[] hobbies = request.getParameterValues("hobbies");
		String travel    = request.getParameter("travel");
		String content   = request.getParameter("content");
	
	%>
	<fieldset>
		<p>아이디   : <%=id %></p>
		<p>비밀번호 : <%=pwd %></p>
		<p>이름     : <%=name %></p>
		<p>나이     : <%=age %></p>
		<p>성별     : <%=gender %></p>
		<p>취미 : 
			<% 
				for (int i=0; i<hobbies.length; i++) {		
			%>
					<%=hobbies[i] %>&nbsp;
			<% 
				}
			%>
		</p>
		<p>가고 싶은 여행지 : <%=travel %></p>
		<p>메모 : <%=content %></p>
	</fieldset>
	
</body>
</html>