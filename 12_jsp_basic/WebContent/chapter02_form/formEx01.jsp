<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초1</title>
<script>

	function send() {
		// 선택자.submit(); : submit 메서드를 통해서 데이터를 전송한다.
		document.f.submit();
		
	}
	
</script>
</head>
<body>

	<%-- 	


		# 웹서버란? 
		
		- 웹 브라우저를 이용하여 WWW(World Wide Web)	을 사용하는 클라이언트에게 미리 저장된 하이퍼 텍스트를 제공하는 서버
			Ex) Apache , IIS
		
		
			+@ www(World Wide Web)
			전 세계에 있는 네트워크에 연결된 시스템을 통해 정보를 공유할 수 있는 정보 공간
			1989년 3월 팀 버너스 리의 제안으로 연구 및 개발 되었고 , 월드 와이드 웹 콘소시엄(W3C)이 개발하고 있다.
	
	
	
		# HTTP ( Hypertext Transfer Protocol )
	
			- 하이퍼텍스트 전송규약
			- 웹 상에서 파일(텍스트 , 그래픽이미지 , 비디오 , 멀티미디어 이미지등)을 주고 받는데 필요한 프로토콜
			- TCP 기반의 프로토콜이며 , Text형태의 프로토콜
			- HTTPS(Secure Hypertext Transfer Protocol)는 사용자의 페이지 요청들과 웹서버에 의해 반화되는 페이지들을 암호화하고 해석한다.
			- HTTP Request : 웹 클라이언트가 웹서버에 자원을 요청하는 것
				
				주요 메서드 : GET	  => 자원 요청
							  POST	  => Entity를 포함한 자원요청
							  HEAD	  => HTTP Head 정보만 수신
							  TRACE	  => Request의 루프백 테스트
							  PUT	  => URL에 자원을 생성
							  DELETE  => URL의 자원을 삭제
							  OPTIONS => 응답가능한 HTTP 메소드를 요청
					
				
			- HTTP Response : 클라이언트 요청에 대한 서버의 응답
				
				주요 응답코드 :  1xx => Information
								 2xx => Success
								 3xx => Redirection
								 4xx => Client Error
								 5xx => Server Error
								
				+@ URL Mete Character
				
				? 	=> URL과 Parameter의 구분을 위해 사용
				& 	=> Parameter의 구분자
				= 	=> Parameter 대입 연산자
				@ 	=> 메일 계정 표시
				% 	=> Hex값으로 표현할 경우
				+ 	=> 공백문자
				:>> => 프로토콜 구분자
				#	=> 동일한 페이지 내에서 위치 이동시 사용
			
		
		# 폼 데이터 전송
		
			- action : 데이터를 전송할 위치를 작성한다.
			- method : 입력데이터가 서버로 보내지는 방법을 기술한다. GET과 POST 방식이 있고 기본방식은 GET방식이다. 
			- GET방식 : URL 주소 뒤에 파라미터를 붙여서 데이터를 전달하는 방식.
			            ? 기호 앞에적힌 곳은 URL주소가 되고 
			            ? 기호 뒤에 오는 값들이 서버로 전달되는 파라미터 값이 된다.
			
			- POST방식 : 사용자가 입력한 데이터를 URL 주소에 붙이지 않고 
			             HTTP Request 헤더에 포함시켜서 전송하는 방식이다.
	
	 --%>
	 <form action="formEx01Pro.jsp" method="post" name="f">
	 	<fieldset>
	 		<legend>회원정보</legend>
	 		<!-- name 속성의 값이 서버로 전송된다. -->
	 		<p>이름 : <input type="text" name="userName"></p>
	 		<p>연락처 : <input type="text" name="userContact"></p>
	 		<p>나이 : <input type="text" name="userAge"></p>
	 		<!-- 전송방법1) submit -->
	 		<p><input type="submit" value="전송하기"></p>
	 		
	 		<!-- 전송방법2) javascript, jquery -->
	 		<p><input type="button"	value="전송하기" onclick="send()"></p>
	 	</fieldset>
	 </form>

</body>
</html>