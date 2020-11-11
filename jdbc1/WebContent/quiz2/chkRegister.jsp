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
	String uesrAddr = (String)request.getParameter("addr");
	String userTel = (String)request.getParameter("tel");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
// 	String sql ="select * from member_ex where id = "+ "\'" + userId + "\'";
	String sql ="select * from member_ex where id =?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){ 
%>
	<script>
		alert("아이디가 이미 존재합니다.");
		self.location = history.back();
	</script>
<%
	}else{
		sql ="insert into member_ex values(?, ?, ?, ?, ?)";
		ps = con.prepareStatement(sql);
		ps.setString(1, userId);
		ps.setString(2, userPwd);
		ps.setString(3, userName);
		ps.setString(4, uesrAddr);
		ps.setString(5, userTel);
		ps.execute();
%>
	<script>
		alert("회원가입을 축하합니다.");
		self.location = "login.jsp";
	</script>
<%}
%>
</body>
<script>
	
</script>
</html>