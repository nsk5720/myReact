<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>	

<%--	 <% 전체를 스트립트릿 라고 부름 %> (변수선언 포함 문장)		--%>
<%--	 <%@ 디렉티브 %> (골뱅이 나오는거 / jsp 문서형식선언) 	--%>
<%--	 <% 선언문 %> (아무것도 없는거 / 변수선언) 				--%>
<%-- 	 <%! 선언문 %> (!들어 간거 / 변수선언) 				--%>
<%-- 	 <%= 표현식 %> (=들어간 것 / 변수)			 		--%>


<html>
<head>
	<meta charset="UTF-8">
	<title>결과출력창</title>
</head>
<body>
	<h1>결과 출력</h1>
	<%
	 request.setCharacterEncoding("utf-8");
 	 String user_id=request.getParameter("user_id");
	 String user_pwd=request.getParameter("user_pwd");
	%> 
	<h1>아이디: <%=user_id %></h1>
	<h1>비밀번호: <%=user_pwd %></h1>
</body>
</html>