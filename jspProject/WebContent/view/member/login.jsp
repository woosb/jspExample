<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../includes/header.jsp" %>
<h1>로그인 페이지 입니다.</h1>
<form action="loginChk.jsp" method="post">
	<input type="text" placeholder="아이디" name="id"><br>
	<input type="text" placeholder="비밀번호" name="pwd">
	<input type="submit" value="로그인" width=30px height="50px">
</form>
<a href="register.jsp">회원가입</a>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>