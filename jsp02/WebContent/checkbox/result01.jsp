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
	<%	
		request.setCharacterEncoding("utf-8");
		
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String n = (String)paramEnum.nextElement();
			out.print(n+"<br>");
		}
// 		String chk = request.getParameter("chk");
		//checkbox 에서 여러개의 값을 전달해 줄때는 아래의 메서드를 사용한다.
		String[] chk = request.getParameterValues("chk");
		if(chk != null){
			for(String str : chk){
				out.print(str);
			}		
		}else{
			out.print("체크박스를 선택해 주세요!");
			out.print("<table border='1'>");
			out.print("<tr><th>값 없음</th></tr>");
			out.print("</table>");
		}
	%>
</body>
</html>