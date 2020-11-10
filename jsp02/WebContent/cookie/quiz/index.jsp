<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<br>
<h1>CARE LAB</h1>
<h2>저희 사이트에 방문해 주셔서 감사합니다.</h2>
<% 
	Boolean bool = false;
	Cookie cookieArr[] = request.getCookies();
	if(cookieArr != null){
		for(Cookie c : cookieArr){
			if(c.getName().equals("testCookie")){
				System.out.println(c.getName());
				bool = true;
			}
		}
	}else{
		bool = false;
	}
%>
<%if (bool == false){%>
	<script>
			window.open("popup.jsp","", "width=300, height=200, top=500, left=500");
	</script>
<%} %>
</body>
</html>