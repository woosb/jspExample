<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>세션 설정값 가져오기</h1>
<%
	String id = (String)session.getAttribute("id");
	Integer age = (Integer)session.getAttribute("age");
	String key = (String)session.getAttribute("key");
%>
id : <%= id %><br>
age : <%= age %><br>
key : <%= key %><br>

	<a href="setSession.jsp">setSession(세션확인) 이동</a>
	<a href="delSession.jsp">delSession(세션삭제) 이동</a>
</body>
</html>