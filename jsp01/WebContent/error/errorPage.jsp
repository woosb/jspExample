<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage = "error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	errorPage.jsp<br>
<!-- 	이 페이지에서 에러가 발생한다면 자동으로 위에서 선언한 error.jsp로 이동한다. -->
	<%= 100/0 %>
	
</body>
</html>