<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>request.getParamterNames() 메서드 사용</h1>
<%
	Enumeration e = request.getParameterNames();
	while(e.hasMoreElements()){
		String str = (String)e.nextElement();
		if(str != null){
			if(str.equals("season")){
				String season[] = request.getParameterValues("season");
				for(String a : season){
					out.print(str + " : " + a);
					out.print("<br>");
				}
			}
			out.print(str + " : " + request.getParameter(str));
			out.print("<br>");	
		}
	}
%>
</body>
</html>