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
	<link rel="icon" href="/project03/images/favicon.ico">
	<title>농협은행 로그인</title>
	<!--[if gte IE 9]>
	<style>
		.gradient{
			filter: none;
		}
	</style>
	<![endif]-->
	<link rel="stylesheet" href="/project03/sub04/css/style.css"/>
	<link rel="stylesheet" href="/project03/sub04/css/common.css"/>
	
	<script src="/project03/sub04/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub04/js/script.js"></script>
	<!-- <script src="js/signup.js"></script> -->
	<script>
		function fn_sendMember(){
		//자바스크립트에서 <form> 태그의 name으로 접근해 입력한 값들을 얻는다.
		var frmMember = document.frmMember;
		var id = frmMember.id.value;
		var pwd = frmMember.pwd.value;
		var pwdCheck = frmMember.pwdCheck.value;
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
			}  else if(pwdCheck != pwd) { 
			    alert("비밀번호가 일치하지 않습니다.\n다시 입력해 주세요!"); 
			       document.frmMember.pwdCheck.focus(); 
			        // select()를 사용하여 블럭지정
			       document.frmMember.pwdCheck.select(); 
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
	<%@ include file="../main/headerLogin.jsp" %>
		<section style=height:100%;>
	<form name="frmMember">
		<div class="memberJoinWrap">
			<div class="memberJoin">회원가입</div>
		</div>
		<div class="wrap">
			<div class="partWrap">
				<div class="part fl"><span>*</span>아이디</div>
				<div class="fl"><input type="text" name="id"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl"><span>*</span>비밀번호</div>
				<div class="fl"><input type="password" name="pwd"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl"><span>*</span>비밀번호 확인</div>
				<div class="fl"><input type="password" name="pwdCheck" /></div>
			</div>	
			<div class="partWrap">
				<div class="part fl"><span>*</span>이름</div>
				<div class="fl"><input type="text" name="name"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl"><span>*</span>이메일</div>
				<div class="fl"><input type="text" name="email"/></div>
			</div>
		<div class="button">
			<input class="join" type="button" value="가입하기" onclick="fn_sendMember()"/>
			<input class="reset" type="reset" value="다시입력"/>
			<!-- <hidden> 태그를 이용해 서블릿에게 외원 등록임을 알린다 -->
			<input type="hidden" name="command" value="addMember"/>
		</div>
		</div>
	</form>
		</section>
	<%@ include file="../main/footerLogin.jsp" %>
</body>
</html>