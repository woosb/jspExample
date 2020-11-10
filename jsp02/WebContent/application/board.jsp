<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int count = (Integer)application.getAttribute("cnt");
	count++;
	application.setAttribute("cnt",count);
%>
<h1>게시글 입니다.</h1><br>
<h3>공지사항 입니다.</h3><br>
<p>
	jsp application을 이용한 조회수 올리기 문제 입니다.
	<a href="main.jsp">돌아가기</a>
</p>
</body>
</html>