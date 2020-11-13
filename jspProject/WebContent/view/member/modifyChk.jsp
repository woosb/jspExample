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
<jsp:useBean id="dto" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="dto"/>
<%
	dao.modify(dto);
%>
<script>
	alert("수정이 완료 되었습니다.");
	self.location="memberDetail.jsp?id="+"<%=dto.getId()%>";
</script>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>