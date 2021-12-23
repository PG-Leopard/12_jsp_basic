<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제</title>
</head>
<body>

	<!-- 
	
		문제1) 1~5까지의 합 출력
		정답1) 15
	
		문제2) 1~10까지 반복해 3미만 7이상만 출력
		정답2) 1 2 7 8 9 10
	
		문제3) 문제2의 조건에 맞는 수들의 합 출력
		정답3) 37
		
		문제4) 문제2의 조건에 맞는 수들의 개수 출력
		정답4) 6
		
	 -->
	<c:set var="sum1" value="0"/>
	<c:forEach var="i" begin="1" end="5">
		<c:set var="sum1" value="${sum1 + i}"/>
	</c:forEach>
	정답1) ${sum1}
	<hr>
	
	정답2)
	<c:set var="sum" value="0"/> 
	<c:set var="cnt" value="0"/>
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i lt 3 || i ge 7}">
			<c:set var="sum" value="${sum + i}"/>
			<c:set var="cnt" value="${cnt + 1}"/>
			${i}&nbsp;
		</c:if>
	</c:forEach>
	<hr>
	
	정답3) ${sum}
	<hr>
	
	정답4) ${cnt}
	
</body>
</html>