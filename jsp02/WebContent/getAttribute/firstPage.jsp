<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> firstPage.jsp<br>
	<%
	//범위가 현재 페이지 내에서만 유지가 된다.
	pageContext.setAttribute("name", "page man");
	
	//범위가 현재 페이지 그리고 다음페이지까지 전달이 가능하다.
	//다음페이지로 전달할 때는 forward를 사용한다.
	request.setAttribute("name", "request man");
	
	//현재 사용중인 브라우저가 켜져있는동안 유지된다.
	session.setAttribute("name", "session man");
	
	//서버가 켜져있는동안 유지된다.
	application.setAttribute("name", "application man");
	%>
	
	<h3>firstPage</h3>
	하나의 페이지 속성 : <%= pageContext.getAttribute("name") %><br>
	하나의 요청 속성 : <%= request.getAttribute("name") %><br>
	하나의 세션 속성 : <%= session.getAttribute("name") %><br>
	하나의 어플 속성 : <%= application.getAttribute("name") %><br>
	
	<hr>
	<a href="secondPage.jsp">secondPage 이동</a>
	<%
		request.getRequestDispatcher("secondPage.jsp").forward(request, response);
	%>
</body>
</html>