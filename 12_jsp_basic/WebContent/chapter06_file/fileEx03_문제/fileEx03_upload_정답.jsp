<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		
		String location = "C:\\Users\\PG_Leopard\\git\\12_jsp_basic\\12_jsp_basic\\WebContent\\chapter06_file\\file_repo";
		
		MultipartRequest multi = new MultipartRequest(request , location , 1024 * 1024 * 5 , "utf-8" , new DefaultFileRenamePolicy());
				
		Enumeration<?> files = multi.getFileNames();
		
	%>
		<h1>업로드 파일 확인</h1>	
	<%
		if (files.hasMoreElements()){
			
			String element = (String)files.nextElement();
			String fileSystemName = multi.getFilesystemName(element);
			
	%>
			<h3>파일명 : <%=fileSystemName %></h3>
	<%
		}
	%>
</body>
</html>