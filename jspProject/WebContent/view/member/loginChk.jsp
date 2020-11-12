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
	int result = dao.loginChk(dto);
	if(result == 1){
	//로그인 성공
	session.setAttribute("loginSuccess", dto);	
%>
	<script>
		alert("로그인 성공");
		self.location="successLogin.jsp";
	</script>		
<%	}else if(result == -1){
	//아이디가 존재하지 않습니다.%>
	<script>
		alert("아이디가 존재하지 않습니다.");
		self.location=history.back();
	</script>
<%	}else if(result == 0){
	//db에러 %>
	<script>
		alert("데이터베이스 에러");
		self.location=history.back();
	</script>
<%	}else if(result == 2){
	//db에러 %>
	<script>
		alert("비밀번호가 틀립니다.");
		self.location=history.back();
	</script>
<%	}
%>
</body>
</html>