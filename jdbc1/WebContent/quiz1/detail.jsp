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
	String st = (String)request.getParameter("id");
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql ="select * from student where 학번 = " + st;
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String stNum = rs.getString("학번");
		String name = rs.getString("이름");
		String kor = rs.getString("국어");
		String eng = rs.getString("영어");
		String math = rs.getString("수학");
%>
<h1>인적 사항</h1>
학번 : <%= stNum %><br>
이름 : <%= name%><br>
국,영,수 : <%= kor %>, <%= eng %>, <%= math %><br>
<%
	}
%>
</body>
</html>