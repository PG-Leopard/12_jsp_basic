<%@page import="_04_bean.ProductDao"%>
<%@page import="_04_bean.ProductBean"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanEx01Pro</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String pdCd   = request.getParameter("pdCd");
		String pdNm   = request.getParameter("pdNm");
		String deptCd = request.getParameter("deptCd");
		String deptNm = request.getParameter("deptNm");
		String mgrCd  = request.getParameter("mgrCd");
		String mgrNm  = request.getParameter("mgrNm");
		
		ProductBean bean1 = new ProductBean();
		bean1.setPdCd(pdCd);
		bean1.setPdNm(pdNm);
		bean1.setDeptCd(deptCd);
		bean1.setDeptNm(deptNm);
		bean1.setMgrCd(mgrCd);
		bean1.setMgrNm(mgrNm);
		
	%>
	
	<jsp:useBean id="bean2" class="_04_bean.ProductBean">	<!-- property는 변수라고 보면 됨 -->
		<jsp:setProperty name="bean2" property="pdCd" value="<%=pdCd %>"/>
		<jsp:setProperty name="bean2" property="pdNm" value="<%=pdNm %>"/>
		<jsp:setProperty name="bean2" property="deptCd" value="<%=deptCd %>"/>
		<jsp:setProperty name="bean2" property="deptNm" value="<%=deptNm %>"/>
		<jsp:setProperty name="bean2" property="mgrCd" value="<%=mgrCd %>"/>
		<jsp:setProperty name="bean2" property="mgrNm" value="<%=mgrNm %>"/>
	</jsp:useBean>
	
	<jsp:useBean id="bean3" class="_04_bean.ProductBean">	<!-- useBean을 사용해서 위의 <% %> 작업을 간편히 함. * 을 사용하면 모든 변수에 적용하여 편리 -->
		<jsp:setProperty property="*" name="bean3"/>
	</jsp:useBean>

	<% 
	
		// 확인	
		ProductDao productDao = new ProductDao();
		productDao.showData(bean1);
		productDao.showData(bean2);
		productDao.showData(bean3);
		
	%>
	
	<!-- 확인 -->
	<p>bean1 : <%=bean1.getPdNm() %></p>
	<p>bean2 : <%=bean2.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean2"/></p>
	<p>bean3 : <%=bean3.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean3"/></p>
	
</body>
</html>