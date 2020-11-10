<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>설문 조사</h1>
<form action="re1.jsp">
<table border='1'>
	<tr>
		<th>이름</th>
		<th><input type="text" name='name'></th>
	</tr>
	<tr>
		<th>성별</th>
		<th>
			<input type="radio" name='sex' checked value="남자"> 남자
			<input type="radio" name='sex' value="여자"> 여자
		</th>
	</tr>
	<tr>
		<th>좋아하는 계절</th>
		<th>
			<input type="checkbox" name='season' value="봄"> 봄
			<input type="checkbox" name='season' value="여름"> 여름
			<input type="checkbox" name='season' value="가을"> 가을
			<input type="checkbox" name='season' value="겨울"> 겨울
		</th>
	</tr>
	<tr>
		<th>
			<input type="submit" value="전송">
		</th>
		<th>
			<input type="reset" value="취소">
		</th>
	</tr>
</table>
</form>
</body>
</html>