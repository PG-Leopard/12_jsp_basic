<%@page import="_06_file.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="_06_file.FileDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	
	<h1>파일 리스트</h1>
	<table border="1">
		<tr>
			<th>작성자</th>
			<th>제목</th>
			<th>파일명</th>
			<th>크기</th>
			<th>첨부파일</th>
			<th>날짜</th>
		</tr>
		<% 
			ArrayList<FileDto> fileList = FileDao.getInstance().getFileList();
		
			for (FileDto fileDto : fileList) {
		%>
				<tr align="center">
					<td><%=fileDto.getUserName() %></td>
					<td><%=fileDto.getTitle() %></td>
					<td><%=fileDto.getFilesystemName()%></td>
					<td><%=fileDto.getLength()%> Byte</td>
					<td><a href="fileEx02_download.jsp?fileName=<%=fileDto.getFilesystemName()%>">다운</a></td>
					<td><%=fileDto.getFileUploadDate() %></td>
				</tr>
		<% 	
			}
		%>
		<tr>
			<td colspan="6">
				<a href="fileEx02_form.jsp">파일 업로드</a>
			</td>
		</tr>
	</table>
	
</body>
</html>