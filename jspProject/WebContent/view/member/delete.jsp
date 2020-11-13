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
// 	MemberDTO dto = (MemberDTO)session.getAttribute("loginSuccess"); 
	String id = request.getParameter("id");
	MemberDTO dto = new MemberDTO();
	dto.setId(id);
	dao.delete(dto);
%>
<script>
	alert("삭제 되었습니다.");
	self.location = "logout.jsp";
</script>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>