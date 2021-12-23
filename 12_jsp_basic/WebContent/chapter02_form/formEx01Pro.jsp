<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <%--
	
		- 폼 전송을 통해서 넘어 오는 데이터는 request객체를 통해서 전달을 받는다.
		- 페이지의 encoding설정 외에 request객체의 encoding을 setCharacterEncoding(실무에서 적을 일 없으니 자동완성 쓸 것. 외우기 x) 메서드로 utf-8로 추가 지정해 주어야한다.
		- request.getParameter(); 메소드를 통해서 form을 통해 넘어온 데이터의 name속성 값을 가져온다. request.getParameter() 이거는 외울 것.
		- request.getParameter(); 의 기본 반환타입은 문자열이다.
		- request.getParameterValues(); 메소드를 통해서 배열의 값을 처리 할 수 있다.
	 
	 --%>
	 
	 <%
	 
	 	request.setCharacterEncoding("utf-8");
	 
	 	String userName = request.getParameter("userName");
	 	String userContact =request.getParameter("userContact");
	 	int userAge = Integer.parseInt(request.getParameter("userAge")); // 문자열 > 숫자
	 	
	 	System.out.println("이름 : " + userName);
	 	System.out.println("연락처 : " + userContact);
	 	System.out.println("나이 : " + userAge);
	 	System.out.println();
	 	
	 %>
	 
</body>
</html>