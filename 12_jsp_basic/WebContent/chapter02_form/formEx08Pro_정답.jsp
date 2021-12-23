<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx08Pro</title>
</head>
<body>

	<%
		// 실제 상대의 계좌와 입력된 계좌
		String yourAccount = request.getParameter("yourAccount");
		String sendAccount = request.getParameter("sendAccount");
		
		// 보낼 금액과 내가 가진 금액
		int sendMoney = Integer.parseInt(request.getParameter("sendMoney"));
		int myMoney = Integer.parseInt(request.getParameter("myMoney"));
		
		boolean isRight = false;								// 계좌번호 일치여부를 저장할 변수 선언
		String printing = "";									// 출력할 문장을 저장할 변수 선언
		
		if (yourAccount.equals(sendAccount)) isRight = true;	// 계좌번호가 일치하면 isRight의 값을 true로 저장
		
		if (!isRight) printing = "없는 계좌번호 입니다";		// 계좌번호가 일치하지 않았을 경우 출력할 문장
		else if (isRight && myMoney >= sendMoney) {
			myMoney -= sendMoney;
			printing = "222-222-2222계좌에 " + sendMoney + "원을 이체를 완료하였습니다. 남아있는 금액은 " + myMoney + "원 입니다";
		}
		else if (isRight && myMoney < sendMoney) {
			printing = "111-111-1111 계좌에 잔액이 " + (sendMoney - myMoney) + "원만큼 부족합니다.";
		}
	%>
	<h3><%=printing %></h3>
	
</body>
</html>