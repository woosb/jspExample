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
		pageContext.setAttribute("name", "page man");
		request.setAttribute("name", "request man");
		session.setAttribute("name", "session man");
		application.setAttribute("name", "application man");
	%>
<!-- 범위를 명시하지 않으면 범위가 작은 값이 우선시 된다. -->
	name : ${name }<br> 
	page : ${pageScope.name }<br>
	request : ${requestScope.name }<br>
	session : ${sessionScope.name }<br>
	application : ${applicationScope.name }<br>
	<a href="scopeTest.jsp">이동</a>
</body>
</html>