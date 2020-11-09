<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아무내용이나 작성
	<%= 
		"아무내용이나 작성" 
	%>
	
	<%-- 	
		<% %> 를 사용하면 자바 문법을 사용할 수 있다. 
	--%>
	<%
		int num = 123;
		System.out.print(num);
		out.print(num);
	%>
	<%
		out.print("<hr>");
		String j = "JSP";
		out.print("<h1>"+ j +"시작 입니다." + "</h1>");
		out.print("<h1>"+ j +"끝입니다." + "</h1>");
	%>
	
	<%-- <%= data%> = out.print(date) --%>
	<% String name = "asd"; %>
	<%= name %>
	<hr>
	
	자바 명령어로 덧셈 연산
	<p>
	<%
		int num1 =10, num2 = 20;
	%>
	<%
		out.print(num1 + " + "+ num2 +  " = " +(num1 + num2));
	%>
	<br>
	<%=num1 %> + <%=num2 %> = <%= num1+num2%>
	
	<br>
	<input type="text" value= "10+20 = <%=num1 + num2 %>">
	
	
</body>
</html>