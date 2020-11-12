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
	if((MemberDTO)session.getAttribute("loginSuccess") == null){
%>
<script>
	alert("로그인 하셔야 합니다.");
	self.location="login.jsp";
</script>
<%
	}
%>
<%@ include file="../includes/header.jsp"%>

<h1>로그인 성공</h1>

<%@ include file="../includes/footer.jsp"%>
</body>
</html>