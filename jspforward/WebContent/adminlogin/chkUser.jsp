<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String user = request.getParameter("user");
	if(user.equals("user")){
%>
<!-- 
	forward를 사용해서 request값을 다음페이지로 그대로 전달할 수 있다. 
	jsp:param 을 이용해서 보내줄 request.getParam을 추가해 줄 수도 있다.	
-->
	<jsp:forward page="userPage.jsp">
		<jsp:param value="user" name="name"/>
	</jsp:forward>
<%	}else{%>
	<jsp:forward page="adminPage.jsp">
		<jsp:param value="admin" name="name"/>
	</jsp:forward>	
<%	}%>
</body>
</html>