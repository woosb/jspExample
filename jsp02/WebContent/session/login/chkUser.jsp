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
	String id="1", pw="1", nickName="홍길동";
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw")) ){
		session.setAttribute("loginUser", nickName);
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>