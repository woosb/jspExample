<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="chkUser.jsp">
		<input type="text" name="id" placeholder="아이디" aria-describedby="ㅁㄴㅇ"><br>
		<input type="text" name="pwd" placeholder="비밀번호"><br>
		<input type="radio" name="user" value="user" checked  >사용자
		<input type="radio" name="user" value="admin">관리자<br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>