<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 태그 라이브러리를 선언해주어야 jstl을 사용할 수 있다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 기본 문법</title>
</head>
<body>

	<%-- 
	
		# JSTL (JSP Standard Tag Library) 
		
		- JSP 개발을 단순화하기위한 태그 library
		- 태그라이브러리를 선언해주고 사용해야 한다. 

		1) 변수 생성
		
			[형식]
		
			<c:set var="변수 이름" value="값"/>
		
			- 선언된 변수를 EL 형식 ${변수이름}으로 사용 가능하지만 스크립트 표현식으로 사용할 수 없다. 
		
		
		
		2) 변수 삭제
		
			[형식]
		
			<c:remove var="변수이름" />		
		
		
		
		3) 데이터 출력
		
			[형식]
		
			<c:out value="" />		
					
	--%>
	
	<h3>1,2,3) 변수 생성 , 삭제 , 출력</h3>
	<c:set var="name1" value="팀 버너스 리"/>
	<c:set var="name2" value="Timothy John Berners Lee"/>
	
	<p>${name1 } , ${name2}</p>
	<p>
		<c:out value="${name1 }"/> ,
		<c:out value="${name2 }" />
	</p>

	<c:remove var="name1"/>
	<p>
		<c:out value="${name1}" /> ,
		<c:out value="${name2}" />
	</p> 
	
</body>
</html>