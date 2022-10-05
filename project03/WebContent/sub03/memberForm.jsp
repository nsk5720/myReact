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
<link rel="stylesheet" href="/project03/sub03/css/common.css"/>
	<script src="/project03/sub03/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub03/js/script.js"></script>
   <meta charset="UTF-8">
   <title>회원 가입창</title>
</head>
<body>
<form method="post" action="${contextPath}/member/addMember.do" style="width:350px; margin: 0 auto;">
<h1  style="text-align:center; font-size:50px; margin:50px;}">회원 가입창</h1>
<div  align="center">
    <div>
       <div width="200"><p align="right">아이디</div>
       <div width="400"><input type="text" name="id"></div>
    </div>
    <div>
        <div width="200"><p align="right">비밀번호</div>
        <div width="400"><input type="password"  name="pwd"></div>
    </div>
    <div>
        <div width="200"><p align="right">이름</div>
        <div width="400"><p><input type="text"  name="name"></div>
    </div>
    <div>
        <div width="200"><p align="right">이메일</div>
        <div width="400"><p><input type="text"  name="email"></div>
    </div>
    <div>
        <div width="200"><p>&nbsp;</p></td>
        <div width="400">
	       <input type="submit" value="가입하기">
	       <input type="reset" value="다시입력">
       </div>
    </div>
</div>
</form>
</body>
</html>