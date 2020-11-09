<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>get 방식</h3>
	form.jsp<br>
	<form action="getMethod.jsp" method="get">
		<input type="hidden" name="n" value="홍길동"><br>
		<input type="text" name="n1" value="산골짜기"><br>
		<input type="text" name="n2" value="20살"><br>
		<input type="submit" value="submit">
	</form>
	<a href="getMethod.jsp?n1=김개똥&n2=200살">이동</a>
<hr>

<h3>post 방식</h3>
	<form action="postMethod.jsp" method="post">
		<input type="text"	name="id"><br>
		<input type="text"	name="pwd"><br>
		<input type="text"	name="name"><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>