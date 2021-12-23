<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분기문</title>
</head>
<body>

	<%-- 

		1) if문
			
			<c:if test="조건식"></c:if>   
		
			- 자바의 if문 기능을 한다.
			- test값의 조건식이 true면 실행된다.
			- 보통 EL로 사용한다.
			

			
		2)	when ~ otherwise문
		
			[형식]
		
			<c:choose> 								> 특정한 기능은 하지 않지만 문법적으로 사용해야 된다.
				<c:when test="조건식"> </c:when>	> 조건식이 참일 경우 수행된다. 보통 EL로 사용한다.
				<c:otherwise> </c:otherwise>  		> 조건식이 거짓일 경우 수행된다.
			</c:choose>
			
			- 자바의 if ~ else문 기능을 한다.
		
		
		
		3) 	when , when ~ otherwise문	
		
			[형식]
	
			<c:choose> 								 > 특정한 기능은 하지 않지만 문법적으로 사용해야 된다.
				<c:when test="조건식"></c:when> 	 > 조건식이 참일 경우 수행된다. 
				<c:when test="조건식"></c:when>								  
				<c:when test="조건식"></c:when>  
				<c:otherwise></c:otherwise>   		 
			</c:choose>
		
			- 자바의 if ~ else if문 기능을 한다.
			- 다중 택일로서 특정 구문이 실행되면 이하 구문은 실행되지 않는다.

	 --%>
	
	<h3>1) if문</h3>
	<c:set var="grade" value="85"/>
	<c:if test="${grade ge 90}">
		<p>A</p>
	</c:if>
	<c:if test="${grade ge 80}">
		<p>B</p>
	</c:if>
	<c:if test="${grade ge 70}">
		<p>C</p>
	</c:if>
	<c:if test="${grade ge 60}">
		<p>D</p>
	</c:if>
	<c:if test="${grade lt 60}">
		<p>E</p>
	</c:if>
	<hr>
	
	<h3>2) when ~ other wise문</h3>
	<c:choose>
		<c:when test="${grade ge 60}">
			<p>합격</p>
		</c:when>
		<c:otherwise>
			<p>불합격</p>
		</c:otherwise>
	</c:choose>
	<hr>
	
	<h3>3) when ~ when ~ other wise문</h3>
	<c:choose>
		<c:when test="${grade ge 90}">
			<p>A</p>
		</c:when>
		<c:when test="${grade ge 80}">
			<p>B</p>
		</c:when>
		<c:when test="${grade ge 70}">
			<p>C</p>
		</c:when>
		<c:when test="${grade ge 60}">
			<p>D</p>
		</c:when>
		<c:otherwise>
			<p>E</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>