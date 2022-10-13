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
<link rel="stylesheet" href="/project03/sub04/css/common.css"/>
	<script src="/project03/sub03/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub03/js/script.js"></script>
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
   <title>회원 가입창</title>
   <link rel="icon" href="/project03/images/favicon.ico">
</head>
<body>
	<%@ include file="../main/header.jsp" %>
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
	<%@ include file="../main/footer.jsp" %><br>
</body>
</html>