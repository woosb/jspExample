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
<jsp:useBean id="dao" class="jsp05.BoardDAO"/>
<c:set var="dto" value="${dao.contentView(param.id) }"/>
<div align="center">
<h1>게 시 판 내 용</h1>
<c:out value="${param.id }"/>
<form action="modify.jsp" method="post">
	<input type="hidden" name="id" value="${dto.id }">
	<table border="1">
		<tr>
			<th>번호</th>
			<td>${dto.id }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${dto.hit }</td>
		</tr>
		<tr>
			<th>이름</th>
			<td><input type="text" name="name" value="${dto.name }"></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" value="${dto.title }"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea name="content" rows="10">${dto.content }</textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">&nbsp;&nbsp;
				<a href="list.jsp">목록보기</a>
				<a href="delete.jsp?id=${dto.id }">삭제</a>
				<a href="reply_view.jsp?id=${dto.id }">답변</a>
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>