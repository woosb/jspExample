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

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "system", pwd = "1234";
	Connection con = DriverManager.getConnection(url, id, pwd);
	String sql ="select * from student";
	PreparedStatement ps = con.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		String stNum = rs.getString("학번");
		String name = rs.getString("이름");
		String kor = rs.getString("국어");
		String eng = rs.getString("영어");
		String math = rs.getString("수학");
		%>
	<script>
	$(function(){
		var list = ["<%=stNum%>", "<%=name%>", "<%=kor%>","<%=eng%>", "<%=math%>"]
		var tr = document.createElement("tr");
		for(i = 0; i < list.length; i++){
			if(i == 1){
				td = document.createElement("td");
				a = document.createElement("a");
				a.innerHTML= list[i];
				a.setAttribute("href","detail.jsp?id="+<%=stNum%>);
				td.appendChild(a);
				tr.appendChild(td);
			}else{
				td = document.createElement("td");
				td.innerHTML = list[i];
				tr.appendChild(td);	
			}
		}
		contents = document.getElementById("contents");
		contents.appendChild(tr);
	});
	</script>
<%
	}
%>

</head>
<body>

<table border='1' >
	<thead>
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>국어</th>
		<th>영어</th>
		<th>수학</th>
	</tr>
	</thead>
	<tbody id="contents">
	</tbody>
</table>
</body>
</html>