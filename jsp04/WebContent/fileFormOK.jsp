<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>fileFormOK.jsp<br>
	<%
		String path = application.getRealPath("fileUpDown");
		out.print("path : "+path);
		int size = 1024*10000; //10M
		String file = ""; String oriFile="";
		MultipartRequest multi = new MultipartRequest(
	request, path, size, "utf-8", new DefaultFileRenamePolicy());
		file = multi.getFilesystemName("file");
		oriFile = multi.getOriginalFileName("file");
		out.print("저장될 파일 이름 : "+file);
		out.print("실제 파일 이름 : "+oriFile);
		response.sendRedirect("fileForm.jsp");
	%>
</body>
</html>











