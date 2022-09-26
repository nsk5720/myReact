<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page" />
<jsp:setProperty name="m1" property="name" value="이순신"/>
<jsp:useBean id="m2" class="java.util.ArrayList" scope="page"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어의 여러 가지 논리 연산자 empty 초기화!</title>
</head>
<body>
	<h2>여러가지 논리연산자</h2>
	<h2>
	\${empty m1} : ${empty m1}<br>
	\${not empty m1} : ${not empty m1}<br><br>
	
	\${empty m2} : ${empty m2}<br>
	\${not empty m2} : ${not empty m2}<br><br>
	
	\${empty "hello"} : ${empty "hello"}<br>
	\${empty null} : ${empty null}<br>
	\${empty ""} : ${empty ""}<br>
		
	</h2>
</body>
</html>