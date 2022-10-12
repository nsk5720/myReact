<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, login.*"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>       
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />     
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
	<link rel="stylesheet" href="/project03/sub03/css/style.css"/>
	<link rel="stylesheet" href="/project03/sub03/css/common.css"/>
	<script src="/project03/sub03/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub03/js/script.js"></script>
	<script>
	function fnValidate(){
		//<form> 태그의 name 속성으로 <form>태그의 객체를 받아온다.
		var login=document.login;
		//<form> 태그 내 <input> 태그의 name 속성으로 입력한 ID와 비밀번호를 받아 온다.
		var userId=login.userId.value;
		var userPwd=login.userPwd.value;
		
		if((userId.length==0 || userId=="") || (userPwd.length==0 || userPwd=="")){
			alert("아이디와 비밀번호는 필수입니다.");
		} else {
			//<form> 태그의 전송 장식을 post로 설정한다.
			login.method="post";
			// action 속성을 서블릿 매핑 이름인 login5로 설정
			login.action="/project03/mem.do";
			// 자바스크립트에서 서블릿으로 전송
			login.submit();
		}
	}

	</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../main/header.jsp" %><br>
	<section>
		<div id="section">
			<h2>
				<span class="hidden">인증서 로그인</span>
			</h2>
			<h2>
				<span class="hidden">스마트 로그인</span>
			</h2>
			<h2>
				<span class="hidden">ID/비밀번호</span>
			</h2>
			<article id="contents" class="cf" >
			<h3>
				<span class="hidden">ID/비밀번호</span>
			</h3>
				<div id="high" class="cf">
					<ul class="cf">
						<li class="certificateLogin "><a class="showTooltip" href="/project03/index.jsp" tabindex="258" title="인증서로그인">인증서 로그인</a></li>
						<li class="smartLogin "><a class="showTooltip" href="/project03/sub01/sub01.jsp" tabindex="259" title="스마트로그인">스마트 로그인</a></li>
						<li class="idPw "><a class="showTooltip" href="/project03/sub02/sub02.jsp" tabindex="260" title="ID/비밀번호">ID/비밀번호</a></li>
						
					</ul>
					<div class="member"><span>e농협회원</span>님은 일부 조회 서비스이용이 가능합니다.</div>
					<form method="post" action="login" name="login">
						<p>
							<label for="userId"></label>   
							<input class="guideText" type="text" name="userId" id="userId" value="admin" />
						</p>
						<p>
							<label for="userPwd"></label> 
							<input class="guideText" type="password" name="userPwd" id="userPwd" value="ay2111!!">
						</p>
					<button class="loginBtn" onClick="fnValidate()" type="button">
						<a href="#" onClick="fnValidate()" type="button">로그인</a>
					</button>
					</form>	
					<div class="button">
						<div class="fl">
							<a href="/project03/sub04/sub04.jsp" tabindex="262" class="showTooltip" title="e농협 회원가입">e농협 회원가입</a>
						</div>
						<div class="fl">
							<a href="/project03/sub01/sub01.jsp" tabindex="263" class="showTooltip" title="ID찾기">ID찾기</a>
						</div>
						<div class="fl">
							<a href="/project03/sub02/sub02.jsp" tabindex="264" class="showTooltip" title="비밀번호 초기화(재설정)">비밀번호 초기화(재설정)</a>
						</div>
						
					</div>
				</div>	
				<div id="low" class="fl">   
					<div class="situation">맥(MAC)/리눅스 계열, 가상화(인터넷 망분리 PC, 가상OS)환경에서는 마우스 입력기(가상키보드)를 이용하셔야 합니다.</div>
					<div class="fishingCaution">
						<div class="fisgingSite">
							<div class="fakeSite fl">가짜 은행사이트에 속지 마세요!!</div>
							<div class="look fl"><a href="/project03/index.jsp" tabindex="265" class="look showTooltip" title="자세히보기">자세히보기</a></div>
							<div class="secretNumber">농협은 어떠한 이유로도 OTP카드와 보안카드 ‘전체(35개)’ 또는 ‘일부(2개 초과)’를 요구하지 않습니다.</div>
							<div class="caution">최근 금융기관 콜센터(농협 고객행복센터 1588-2100 등) 번호를 도용하여 개인정보유출 등 사유로 가짜사이트 접속을 유도하는 SMS가 발견되고 있습니다.<br>또한 PC에 악성코드가 설치될 경우 즐겨찾기 또는 정상 은행사이트를 입력하셔도 가짜 은행사이트에 연결될 수 있습니다.</div>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="../main/footer.jsp" %><br>
</body>
</html>