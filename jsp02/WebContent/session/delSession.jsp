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
/*
	session.removeAttribute("age");
	//5초후에 모든 세션을 종료하는 코드
	session.setMaxInactiveInterval(5);
	//모든 세션을 바로 삭제
	session.invalidate();
*/
%>
	<a href="setSession.jsp">setSession(세션생성) 이동</a>
	<a href="getSession.jsp">getSession(세션확인) 이동</a>
</body>
</html>