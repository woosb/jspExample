<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	String userId = (String)request.getParameter("id");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
// 	String sql ="select * from member_ex where id = "+ "\'" + userId + "\'";
	String sql ="delete from member_ex where id =?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet rs = ps.executeQuery();
%>
<script>
	alert("<%=userId%>"+"삭제가 완료 되었습니다.");
	location.href="logout.jsp";
</script>
</body>
</html>