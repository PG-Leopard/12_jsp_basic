<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>형식</title>
</head>
<body>

	<%--  
	
		- fmt 태그는 Formatting 태그로 포맷에 관련된 태그
		- 상세한 옵션은 필요에 따라 검색하여서 구현한다.
		
		requestEncoding : value 속성을 통해 지정한 문자 셋으로 변경 
		setLocale 		: 통화 기호나 시간 대역을 설정한 지역에 맞게 표시 
		timeZone 		: 특정 영역의 시간대를 설정 
		setTimeZone 	: 특정 영역의 시간대 설정 정보를 변수에 저장 
		bundle basename : 속성에 지정된 properties 파일을 읽어옴 
		setBundle 		: properties 파일을 읽어와 다양한 영역에서 참조할 수 있게 설정 
		message bundle  : 태그를 통해 저장된 key로 value를 가져온다 
		formatNumber    : 숫자를 특정 양식에 맞추어 출력 
		parseNumber     : 문자열을 숫자 형식으로 변환 
		formatDate      : 날자 정보를 가진 객체(Date)를 특정 형식으로 변호나하여 출력 
		parseDate       : 문자열을 날짜 형식으로 변환하여 출력

	--%>
		
	<h3>날짜 형식</h3>
	<p>${now }</p>
	<p><fmt:formatDate value="${now }"/></p>
	<p><fmt:formatDate value="${now }" pattern="yyyy-MM-dd"/></p>
	<p><fmt:formatDate value="${now }" pattern="yyyy MM dd"/></p>
	<p><fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일"/></p>
	<hr>
	
	<h3>숫자 형식</h3>
	<p>${nData}</p>
	<p><fmt:formatNumber value="${nData}" pattern=".0"/></p>
	<p><fmt:formatNumber value="${nData}" pattern=".00"/></p>
	<p><fmt:formatNumber value="${nData}" pattern="$#,###.0"/></p>
	<p><fmt:formatNumber value="${nData}" pattern="$#,###.00"/></p>
	<hr>
		
	<p><fmt:formatNumber value="100" pattern="000"/></p>
	<p><fmt:formatNumber value="10" pattern="000"/></p>
	<p><fmt:formatNumber value="1" pattern="000"/></p>
	<hr>
	
	<c:set var="grade1" value="77"/>
	<p>${grade1 + 10}</p>
	<p>${grade1 < 100}</p>
	
	<c:set var="grade2" value="100"/>
	<p>${grade1 + grade2}</p> <!-- 정상 -->
	<p>${grade1 < grade2}</p> <!-- 오류 : 문자열 비교 -->
	
	<fmt:parseNumber var="grade1" value="${grade1}"/>
	<fmt:parseNumber var="grade2" value="${grade2}"/>
	<p>${grade1 + grade2}</p> <!-- 정상 -->
	<p>${grade1 < grade2}</p> <!-- 정상 : 숫자 비교 -->
	
</body>
</html>