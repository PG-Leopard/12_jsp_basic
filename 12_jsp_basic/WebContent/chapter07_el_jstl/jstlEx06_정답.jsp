<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	
	<!--  
	
		# Up & Down 게임
		
		1. com은 8이다.
		2. me는 com의 숫자를 맞추는 게임이다.
		3. 다음과 같은 메세지를 출력한다.
		1) me < com	: Up!
		2) me == com : Bingo!
		3) me > com  : Down!
	
	--> 

	<c:set var="com" value="8"/>
	<c:set var="me" value="8" />
	<fmt:parseNumber var="com" value="${com }"/>	
	<fmt:parseNumber var="me" value="${me }"/>	

	<c:if test="${com gt me}">
		<p>Up!</p>
	</c:if>
	<c:if test="${com lt com}">
		<p>Down!</p>
	</c:if>
	<c:if test="${com eq me }">
		<p>Bingo!</p>
	</c:if>
	
	<c:choose>
		<c:when test="${com gt me }">
			<p>Up!</p>
		</c:when>
		<c:when test="${com eq me }">
			<p>Bingo!</p>
		</c:when>
		<c:when test="${com lt me }">
			<p>Down!</p>
		</c:when>
	</c:choose>
	
</body>
</html>