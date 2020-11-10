<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border='1'>
	<tr>
		<td>제 목</td>
		<td>조 회 수</td>
	</tr>
	<tr>
		<td><a href="board.jsp">안녕하세요</a></td>
		<td>
		<% 
		if(application.getAttribute("cnt") == null){
			application.setAttribute("cnt", 0);
		}
		%>
		<%= application.getAttribute("cnt") %>	
		</td>
	</tr>
</table>
</body>
</html>