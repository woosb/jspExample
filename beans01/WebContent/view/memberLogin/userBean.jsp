<%@page import="members.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<% MemberDTO dto = new MemberDTO(); %> --%>
	<jsp:useBean id="dto" class="members.MemberDTO"/>
	<h3>저장 전 출력</h3>
	<%=dto.getId() %> <%=dto.getPwd() %>
	
	<h3>저장 후 출력</h3>
	<% dto.setId("test"); dto.setPwd("1234"); %>
	<%=dto.getId() %> : <%=dto.getPwd() %>
</body>
</html>