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
<head>
<meta charset="UTF-8">
<title>회원 정보 수정창</title>
<link rel="stylesheet" href="/project03/sub03/css/common.css"/>
<link rel="stylesheet" href="/project03/sub03/css/style.css"/>
	<script src="/project03/sub03/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub03/js/script.js"></script>
	<link rel="icon" href="/project03/images/favicon.ico">
</head>
<body>
	<%@ include file="../main/headerLogin.jsp" %>
	<section style="height: 70%;">
 <div class="memberCorrectWrap">
 	<h1 class="memberCorrect">회원 정보 수정</h1>
 </div>
<form  method="post" action="${contextPath}/member/modMember.do?id=${memInfo.id}">
		<div class="wrap">
			<div class="partWrap">
				<div class="part fl">아이디</div>
				<div class="fl"><input type="text" name="id" value="${memInfo.id}" disabled/></div>
			</div>
			<div class="partWrap">
				<div class="part fl">비밀번호</div>
				<div class="fl"><input type="password" name="pwd" value="${memInfo.pwd}"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl">이름</div>
				<div class="fl"><input type="text" name="name" value="${memInfo.name}"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl">이메일</div>
				<div class="fl"><input type="text" name="email" value="${memInfo.email}"/></div>
			</div>
			<div class="partWrap">
				<div class="part fl">가입일</div>
				<div class="fl"><input type="text" name="joinDate"  value="${memInfo.joinDate }" disabled/></div>
			</div>
		<div class="modButton">
			<input type="submit" class="correctBtn" value="수정하기">
			<input type="reset" class="reset" value="다시입력"/>
		</div>
</form>
	</section>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>