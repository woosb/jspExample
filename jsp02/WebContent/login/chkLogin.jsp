<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>chkLogin.jsp<br>
<%
	request.setCharacterEncoding("utf-8");
	String id = "1", pwd = "2";
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pwd");
	if(id.equals(user_id) && pwd.equals(user_pw)){
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("loginForm.jsp");
	}
%>

</body>
</html>