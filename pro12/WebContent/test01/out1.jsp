<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("name","이순신");
	request.setAttribute("address","서울시 강남구");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변수 넘기기 연습</title>
</head>
<body>
	<form method="post" action="out2.jsp">
		이름<input type="text" name="name"><br>
		나이<input type="text" name="age"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>