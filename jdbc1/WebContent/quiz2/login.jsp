<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
<form action="check.jsp" method="post">
	<input type="text" name="id" placeholder="아이디"/><br>
	<input type="password" name="pwd" placeholder="비밀번호"/><br>
	<br>
	<div  style="display:flex;">
	<input type="submit" value="로그인">
	<input type="button" value="회원가입" onclick="location.href='register.jsp'">
	</div>
</form>
</body>
</html>