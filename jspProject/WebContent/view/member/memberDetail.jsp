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
<%
	String id = (String)request.getParameter("id");
	MemberDTO member = dao.getMemberWithId(id);
%>
<div>
	<h1>개인 정보</h1>
	아 이 디 : <%= member.getId() %><br>
	비밀번호 : <%= member.getPwd() %><br>
	이 름 : <%= member.getName() %><br>
	주 소 : <%= member.getAddr() %><br>
	전화번호 : <%= member.getTel() %><br>
</div>
<%	
	MemberDTO dto = (MemberDTO)session.getAttribute("loginSuccess"); 
	String userId = dto.getId();
	if( userId.equals(member.getId()) ){
%>
	<button type="button" onclick="location.href='modify.jsp?id=<%=member.getId()%>' ">수정</button>
	<button type="button" onclick="location.href='delete.jsp?id=<%=member.getId()%>' ">삭제</button>
<%
	}
%>


<%@ include file="../includes/footer.jsp" %>
</body>
</html>