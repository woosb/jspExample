<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<br>
<h1 style="color:skyblue;">CARE LAB</h1>
<h3>안녕하세요</h3>
	<%
		boolean bool = false;
		Cookie cookie = new Cookie("testCookie", "myCookie");
		cookie.setMaxAge(5);
		//사용자에게 쿠키값을 준다.
		response.addCookie(cookie);
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				out.print("name : " + c.getName() + "<br>");
				out.print("value : " + c.getValue() + "<hr>");
				if(c.getName().equals("testCookie")){
					bool = true;
				}
			}
		}
	%>
	<%if(bool == false){ %>
		<script  type="text/javascript">
			window.open("popup.jsp","", "width=300, height=200, top=500, left=500");
		</script>
	<%}%>
	
</body>
</html>