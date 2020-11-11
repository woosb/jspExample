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
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.js"></script>

</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String userId = (String)request.getParameter("id");
	String userPwd = (String)request.getParameter("pwd");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql ="select * from member_ex where id = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, userId);
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		String dId = rs.getString("id");
		String dPwd = rs.getString("pwd");
		String dName= rs.getString("name");
		if(dId.equals(userId)){
			if(userPwd.equals(dPwd)){
				response.sendRedirect("main.jsp");
// 				session.setAttribute("loginSuccess", dName);
				session.setAttribute("loginSuccess", userId);
			}else{%>
			<script>
				alert("비밀번호가 틀립니다.");
				self.location = history.back();
			</script>
			<%
			}
		}
	}else {%>
	<script>
		alert("일치하는 아이디가 없습니다.");
		self.location = history.back();
	</script>
<%
	}
%>	

</body>
</html>