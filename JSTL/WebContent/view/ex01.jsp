<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<hr>
식 대신 문자로도 표현이 가능하다.
	/(div), %(mod), ==(eq), !=(ne), <(lt), >(gt), <=(le), >=(ge)
ex) ${3 mod 2 } <br>

<hr>
	${5+2}<br>
	${5==2}
<hr>
	정수형 : ${10}<br>
	실수형 : ${10.123}<br>
	논리형 : ${true}<br>
	null  : ${null}	<br>
	<%String s = null; %>
	<hr>
	null => <%= s %><br>
	null => ${s}<br>
	
	<hr>
	${"el표현" }<br>
	<%out.print("스크립트릿 표현"); %><br>
	<%= "표현식"%>
</body>
</html>