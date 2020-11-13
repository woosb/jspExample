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
	MemberDTO dto = (MemberDTO)session.getAttribute("loginSuccess"); 
	String userId = dto.getId();	
	
%>
<form action="modifyChk.jsp" method="post">
	<input type="text" name="id" id="id" placeholder="아이디" value="<%=userId%>" readonly><br>
	<input type="text" name="pwd" id="pwd" placeholder="비밀번호"><br>
	<input type="text" id="pwdChk" placeholder="비밀번호 확인"><br>
	<input type="text" name="name" id="name" placeholder="이름"><br>
	<input type="text" name="addr" id="addr" placeholder="주소"><br>
	<input type="text" name="tel" id="tel" placeholder="전화번호"><br>
	<input type="submit" value="수정하기">
</form>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>