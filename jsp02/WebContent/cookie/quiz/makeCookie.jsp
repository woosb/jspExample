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
	if(request.getParameter("check").equals("checked")){
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(3);
		response.addCookie(cookie);
	}
%>
<script>
	window.close();
</script>
</body>
</html>