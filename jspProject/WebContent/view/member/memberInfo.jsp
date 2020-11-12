<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<%	
	if((MemberDTO)session.getAttribute("loginSuccess") == null){
%>
<script>
	alert("로그인 하셔야 합니다.");
	self.location="login.jsp";
</script>
<%
	}
%>
<%@ include file="../includes/header.jsp" %>
	<%
		ArrayList<MemberDTO> list= dao.memberList();
		for(MemberDTO dto : list){
			String name = dto.getName();
			String addr = dto.getAddr();
			String tel = dto.getTel();
	%>
	<script>
	$( document ).ready(function(){
		list = [ "<%=name%>", "<%=addr%>", "<%=tel%>"];
		var memberList = document.getElementById("memberList");
		var tr = document.createElement("tr");
		for(i = 0; i < 3; ++i){
			td = document.createElement("td");
			td.innerHTML = list[i];
			tr.appendChild(td);
		}
		memberList.appendChild(tr);
	});
	</script>
	<%
		}
	%>
	<h2>회원목록</h2>
	<table border='1'>
		<thead>
			<tr>
				<th>이름</th>
				<th>주소</th>
				<th>전화번호</th>
			</tr>
		<thead>
		<tbody id="memberList">
		
		</tbody>
	</table>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>