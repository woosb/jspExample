<%@page import="members.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="members.MemberDAO"/>
	<%
		ArrayList<MemberDTO> list = dao.memberList();
		for(MemberDTO dto : list){
			out.print(dto.getId() + "<br>");
			out.print(dto.getPwd()+ "<br>");
			out.print(dto.getName()+ "<br>");
			out.print(dto.getAddr()+ "<br>");
			out.print(dto.getTel()+ "<br>");
			out.print("<hr>");
		}
	%>
</body>
</html>