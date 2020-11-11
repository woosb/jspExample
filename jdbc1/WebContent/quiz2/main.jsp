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
	String name = (String)session.getAttribute("loginSuccess");
	if(name != null){
%>
<script>
	var name = "<%= name%>";
	alert(name + " 님 반갑습니다.");
</script>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql ="select * from member_ex";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		String userId = rs.getString("id");
		String userPwd = rs.getString("pwd");
		String userName = rs.getString("name");
		String userAddr = rs.getString("addr");
		String userTel = rs.getString("tel");
		%>
	<script>
	$(function(){
		list = ["<%=userId%>", "<%=userPwd%>", "<%=userName%>", "<%=userAddr%>", "<%=userTel%>"]
		var tr = document.createElement("tr");
		for(var i = 0; i < list.length; i++){
			td = document.createElement("td");
			td.innerHTML = list[i];
			tr.appendChild(td);	
		}
		var tbody = document.getElementById("tbody");
		tbody.appendChild(tr);
	});
	</script>		
<%
	}
%>

<table border='1'>
	<thead>
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>주소</th>
		<th>전화번호</th>
	</tr>
	</thead>
	<tbody id="tbody">
		
	</tbody>
</table>
<input type="button" id="logout" onclick="logout()" value="로그아웃">
<input type="button" onclick="location.href='showInfo.jsp'" value="계정정보">
<script>
	function logout(){
		location.href="logout.jsp";
	}
</script>
<%}else{ %>
<script>
	alert("로그인 하세요!");
	location.href="login.jsp";
</script>
<%
}
%>
</body>
</html>