<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 창</title>
</head>
<body>
	<form action="result.jsp">
		아이디: <input type="text" size=20 /> <br>
		비밀번호: <input type="password" size=20 /> <br>
			<input type="submit" value="로그인" /> <input type="reset" value="다시입력"/>
	</form>
	<br><br>
	<!-- <a href="http://localhost:8090/pro14/test01/memberForm.jsp">회원가입하기</a> -->			<!-- http있는 것이 절대경로 -->
	<%-- <a href="<%=request.getContextPath() %>/test01/memberForm.jsp">회원가입하기</a> --%>		<!-- 표현식 부분 = pro14 -->
	<a href="${pageContext.request.contextPath}/text01/memberForm.jsp">회원가입하기</a>			<!-- 표현언어로 표현 -->
</body>
</html>