<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="chkRegister.jsp" method="post" id="regForm">
	<input type="text" id="id" name="id" placeholder="아이디">(*필수항목)<br>
	<input type="text" id="pwd" name="pwd" placeholder="비밀번호" onchange="pwCheck()"><br>
	<input type="text" id="pwdChk" name="pwdChk" placeholder="비밀번호 확인" onchange="pwCheck()"><span id="cp">(*필수항목)</span><br>
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="addr" placeholder="주소"><br>
	<input type="text" name="tel" placeholder="전화번호"><br>
	<input type="button" value="회원가입" onclick="register()">
</form>
</body>
<script>
	function pwCheck(){
		var pwd = document.getElementById("pwd");
		var pwdChk = document.getElementById("pwdChk");
		
		var cp = document.getElementById("cp");
		if(pwd.value != pwdChk.value){
			cp.innerHTML = "";
			cp.innerHTML = "불일치";
		}else{
			cp.innerHTML = "";
			cp.innerHTML = "일치";
		}
	}
	function register(){
		var pwd = document.getElementById("pwd");
		var pwdChk = document.getElementById("pwdChk");
		var id = document.getElementById("id");
		var cp = document.getElementById("cp");
		if(pwd.value != pwdChk.value){
			alert("비밀번호가 일치하지 않습니다.");
		}else if(id.value == ""){
			alert("아이디는 필수 항목 입니다.")
		}else if(pwd.value == ""){
			alert("비밀번호는 필수 항목 입니다.")
		}else{
			document.getElementById("regForm").submit();
		}
	}
</script>
</html>