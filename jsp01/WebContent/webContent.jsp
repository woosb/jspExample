<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		/ : 현재 프로젝트 위치(포트까지의 위치)
		../ : 현재 위치 이전 위치
		../../ : 현재 위치에서 2단계 전 위치
		/ 가 맨 앞에 있으면 절대경로
		/ 가 맨앞에 없으면 상대 경로
	 -->
	 <h1>webContent.jsp 입니다.</h1>
	 <a href="test01/test1.jsp">test1 이동 합니다.</a><br>
	 <a href="test01/test02/test2.jsp">test2 이동 합니다.</a>
</body>
</html>