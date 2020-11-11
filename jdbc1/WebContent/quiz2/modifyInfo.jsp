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
	String userPwd = (String)request.getParameter("pwd");
	String userName = (String)request.getParameter("name");
	String userAddr = (String)request.getParameter("addr");
	String userTel = (String)request.getParameter("tel");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql = "update member_ex set pwd=? , name=? , addr=?, tel=? where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps = con.prepareStatement(sql);
	ps.setString(1, userPwd);
	ps.setString(2, userName);
	ps.setString(3, userAddr);
	ps.setString(4, userTel);
	ps.setString(5, userId);
	ps.execute();
%>
	<script>
		alert("수정이 완료 되었습니다.");
		location.href="main.jsp";
	</script>	

</body>
</html>