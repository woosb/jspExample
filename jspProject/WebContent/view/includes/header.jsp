<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center" >
<h1 style="color:burlywood; font-size:60px; font-family:Gabriola;">
CARE &nbsp; LAB
</h1>
<hr>
	<div style="text-align:right;">
		<a href="../member/index.jsp">HOME</a>
<% 
	if((MemberDTO)session.getAttribute("loginSuccess") == null){

%>
		<a href="../member/login.jsp">로그인</a>
<%
	}else{
%>
		<a href="../member/memberInfo.jsp">회원 목록</a>
		<a href="../member/logout.jsp">로그아웃</a>
<%
	}
%>
		<jsp:useBean id="dao" class="member.MemberDAO"/>
	</div>
<hr>
</div>

</body>
</html>