<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	el id : ${param.id }<br>
	el pw : ${param.pwd }<br>
	<hr>
	<jsp:useBean id="dao" class="test.TestDAO"/>
	<c:set var="result" value="${dao.userChk(param.id, param.pwd)}"/>
	<c:if test = "${result == 0 }">
		인증 성공 입니다.
	</c:if>
	<hr>
	<h3>개인 정보</h3>
	<c:set var="dto" value="${dao.getUser(param.id) }"/>
	이름 : ${dto.name }<br>
	주소 : ${dto.addr }<br>
	
	<hr>
	<h3>모든 사용자 표현</h3>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>주소</th>
		</tr>
		<c:forEach var="dto" items="${dao.list() }">
			<tr>
				<td>${dto.name }</td>
				<td>${dto.addr}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<c:import url="login_el.jsp"/>
<%-- 	<c:redirect url="login_el.jsp"/> --%>
	<% session.setAttribute("name", "홍길동"); %>
	<c:set var="name" value="홍길동" scope="session"/>
	<c:remove var="name"/>
	<hr>
	<c:set var="name" value="홍길동"/>
	<c:choose>
		<c:when test ="${name eq '홍길동' }">홍길동이군요</c:when>
		<c:when test ="${name == '김개똥' }">김개똥이군요</c:when>
		<c:otherwise>else 동작</c:otherwise>
	</c:choose>
	<hr>
	
	<form action="test.jsp">
		<input type="checkbox" name="se" value="spring">봄
		<input type="checkbox" name="se" value="summer">여름
		<input type="checkbox" name="se" value="fall">가을
		<input type="checkbox" name="se" value="winter">겨울
		<input type="submit">
	</form>
</body>
</html>