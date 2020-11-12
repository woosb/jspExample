<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> userPage.jsp
	<h3>일반 사용자 페이지 입니다.</h3>
	id = <%=request.getParameter("id") %><br>
	pwd = <%=request.getParameter("pwd") %><br>
	user = <%=request.getParameter("user") %><br>
	name = <%=request.getParameter("name") %><br>
	<a href="javascript:history.back()">이전</a>
</body>
</html>