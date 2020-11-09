<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	주소 : <input type="text" value="동대문">
	<hr>
	<%
		int sum = 0;
		int oddSum = 0;
		int evenSum = 0;
		for (int i = 1; i <= 100; i++){
			sum += i;
			if(i%2 == 0)
				evenSum += i;
			else
				oddSum += i;
		}
	%>
	1 + 2 + 3 +... + 100 = <%= sum%> <br>
	1~100 짝수 합 = <%= evenSum%> <br>
	1~100 홀수 합 = <%= oddSum%> <br>
	
	<hr>
<!-- 	페이지가 로드 될때마다 새로 만들어지는 변수이다. -->
<!-- 	새로고침하면 cnt01이 다시 생성되므로 0이 계속 출력 된다. -->
	<%	int cnt01 = 0;	%>
	<%= cnt01++ %>
<%-- 	<%! %> 로 변수를 만들면 static처럼 한번만 변수가 생성된다. --%>
<!-- 	새로고침을 하면 cnt02의 값은 계속해서 1이 증가한다. -->
	<%!	int cnt02 = 0;	%>
	<%= cnt02++ %>
	
</body>
</html>