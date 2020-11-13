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
<%int result = dao.register(dto); 
if(result == 1){
%>
	<script>
		alert("회원가입이 완료되었습니다.");
		self.location="login.jsp";
	</script>
<%}else if(result == -1){%>
<script>
	alert("가입 실패.");
	self.location="register.jsp";
</script>
<%} else{%>
	<script>
		alert("가입 실패.");
		self.location="register.jsp";
	</script>
<%}%>

<%@ include file="../includes/footer.jsp" %>
</body>
</html>