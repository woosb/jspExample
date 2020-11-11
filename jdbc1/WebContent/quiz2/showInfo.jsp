<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String userId = (String)session.getAttribute("loginSuccess");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql ="select * from member_ex where id=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String userPwd = rs.getString("pwd");
		String userName = rs.getString("name");
		String userAddr = rs.getString("addr");
		String userTel = rs.getString("tel");
%>	
<div>
	<form action="modifyInfo.jsp" method="post">
	<table>
	<tr>
		<td>아이디 :</td>
		<td> <span id="id"><%=userId %></span><input type="hidden" name="id" value="<%=userId%>"></td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input type="text" name="pwd" id="pwd" value="<%=userPwd %>"></td>
	</tr>
	<tr>
		<td>이름 : </td>
		<td><input type="text" name="name" id="name" value="<%=userName %>"></td>
	</tr>
	<tr>
		<td>주소 : </td>
		<td><input type="text" name="addr" id="addr" value="<%=userAddr %>"></td>
	</tr>
	<tr>
		<td>전화번호 : </td>
		<td><input type="text" name="tel" id="tel" value="<%=userTel %>"></td>
	</tr>
	</table>
		<input type="submit" value="수정">
	</form>
	<form action="delete.jsp" method="post">
	 	<input type="hidden" name="id" value="<%=userId%>">
		<input type="submit" value="삭제">
	</form>
</div>

<%	
	}
%>
</body>
</html>