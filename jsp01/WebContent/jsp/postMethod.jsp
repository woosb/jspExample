<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 브라우저에서 보내주는 한글이나 다른 문자들을 인코딩해서 서버에서 받는다. -->
<% 
	request.setCharacterEncoding("utf-8"); // 클라이언트에서 보내주는 값을 인코딩.
	response.setCharacterEncoding("utf-8"); // 서버에서 보내주는 값을 인코딩.
%>

	postMethod.jsp<br>
	id : <%= request.getParameter("id") %><br>
	pwd : <%= request.getParameter("pwd") %><br>
	name : <%= request.getParameter("name") %><br>
</body>
</html>