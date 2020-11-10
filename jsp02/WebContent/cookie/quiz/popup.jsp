<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center">공 지 사 항</h1>
	<h3>오전 03 ~ 06시 까지 업데이트 예정입니다.</h3>
	<form action="makeCookie.jsp" id="form">
		<input type="checkbox" onclick="a()" name="check" value="checked">
		하루동안 열지 않음
	</form>
	<script>
		function a(){
			document.getElementById("form").submit();
		}
	</script>
</body>
</html>