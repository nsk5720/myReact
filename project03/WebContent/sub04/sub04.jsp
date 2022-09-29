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
			<div id="signup_content">
				<div id="join_box" class="join_box">
					<span class="signup_title">회원 가입</span>
					<form name="member_form" method="post">				
						<div class="form id">
							<div class="col1">아이디</div>
							<div class="col2">
								<label>
									<input autocomplete="off" maxlength="11" type="text" name="id">
									<div class="id_image info_image"></div>
								</label>
							</div>
							<div class="id_info_box">
<div class='id_info signup_info'></div>								<div class="id_check_text">사용 가능한 아이디입니다.</div>
							</div>								
						</div>
						<div class="form password">
							<div class="col1">비밀번호</div>
							<div class="col2">
								<label>
									<input autocomplete="off" maxlength="15" type="password" name="pwd">
									<div class="pass_image info_image"></div>
								</label>
							</div>
							<div class="password_info signup_info"></div>
						</div>
						<div class="form name">
							<div class="col1">이름</div>
							<div class="col2">
								<input autocomplete="off" maxlength="5" type="text" name="name">
							</div>
							<div class="name_info signup_info"></div>
						</div>
						<div class="form email">
							<div class="col1">이메일</div>
							<div class="col2 cf">
								<input autocomplete="off" maxlength="35" type="text" name="email" class="fl">
							</div>
							<div class="email_info signup_info"></div>
						</div>
						<div class="bottom_line"></div>
						<div class="buttons cf">
							<a class="reset_button fl" title="다시하기" type="reset">다시하기</a>
							<a class="save_button fl" title="가입하기" type="button" onclick="fnSendMember()">가입하기</a>	
							<a type="hidden" name="command" value="addMember"/>						
						</div>
					</form>
				</div> <!-- join_box -->
			</div> <!-- main_content -->
		</section>
	<%@ include file="../main/footer.jsp" %><br>
</body>
</html>