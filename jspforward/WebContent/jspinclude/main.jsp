<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	include된 파일을 두개를 합친 다음에 번역을 하기 때문에 생성한 변수를 서로 공유할 수 있다.
	<%@ include file= "jspInclude.jsp"%> 
--%>
<!-- 	
	두 파일을 따로따로 번역을 하기 때문에 변수를 공유하지 않는다. 
	하지만 style이나 javascript는 공유 가능하다.
	<jsp:include page="jspInclude.jsp"/>
<%-- 	<%=name %>  --%>
-->
	<jsp:include page="jspInclude.jsp"/>
	<h3 class="cl">나는 나 너는너</h3>
	
	
</body>
</html>