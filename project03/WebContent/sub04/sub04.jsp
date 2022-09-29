<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="남상권"/>
	<meta name="Keywords" content="남상권, namsangkwon, 포트폴리오, 남상권 포트폴리오, portfolio, SanKwon's portfolio, 프로젝트, Project, 남 상권, 남 상 권, 상권 남, 상권, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="icon" href="images/favicon.ico">
	<title>농협은행 로그인</title>
	<!--[if gte IE 9]>
	<style>
		.gradient{
			filter: none;
		}
	</style>
	<![endif]-->
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/jquery-1.12.3.js"></script>
	<script src="js/script.js"></script>
	<!-- <script src="js/signup.js"></script> -->
	<script>
		function fnSendMember(){
		var frmMember = document.member_form;
		var id = frmMember.id.value;
		var pwd = frmMember.pwd.value;
		var name = frmMember.name.value;
		var email = frmMember.email.value;
			if(id.length == 0 || id == ""){
				alert("아이디는 필수입니다.");
			} else if(pwd.length == 0 || pwd == ""){
				alert("비밀번호는 필수입니다.");
			} else if(name.length == 0 || name == ""){
				alert("이름은 필수입니다.");
			} else if(email.length == 0 || email == ""){
				alert("이메일은 필수입니다.");
			} else{
				// 전송 방법을 post로 지정
				frmMember.method="post";
				// 서블릿 매핑 이름을 member3으로 지정
				frmMember.action="/project03/memberSk";
				// 서블릿으로 전송
				frmMember.submit();
			}
		}
	</script>
<meta charset="UTF-8">
<title>농협은행 회원가입</title>
</head>
<body>
	<%@ include file="../main/header.jsp" %>
		<section>
<form method="post"   name="member_form">
	<h1  style="text-align:center">회원 가입창</h1>
	<table  align="center">
      <tr>
         <td width="200"><p align="right">아이디</td>
         <td width="400"><input type="text" name="id"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">비밀번호</td>
          <td width="400"><input type="password"  name="pwd"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">이름</td>
          <td width="400"><p><input type="text"  name="name"></td>
      </tr>
      <tr>
          <td width="200"><p align="right">이메일</td>
          <td width="400"><p><input type="text"  name="email"></td>
      </tr>
      <tr>
          <td width="200"><p>&nbsp;</p></td>
          <td width="400">
			<input type="submit" value="가입하기" onclick="fnSendMember()">
			<input type="reset" value="다시입력">
		  </td>
      </tr>
</table>
</form>
		</section>
	<%@ include file="../main/footer.jsp" %><br>
</body>
</html>