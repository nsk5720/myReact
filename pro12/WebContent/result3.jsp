<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String user_id=request.getParameter("user_id");
	String user_pwd=request.getParameter("user_pwd");
%> 
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
<%	//여기가 바로 스트립트릿 부분		(문장에는 가로 넣어줘야함 html에 말고)
	if(user_id==null || user_id.length()==0){
%>
	아이디를 입력하세요.<br>
	<a href="/pro12/login.html">로그인하기</a>
<%
	} else {
		if(user_id.equals("admin")){
%>
	<h1>관리자로 로그인 했습니다.</h1>
	<form>
		<input type=button value="회원정보 삭제하기">
		<input type=button value="회원정보 수정하기">
	</form>
<%				
		}else{
%>
	<h1>환영합니다. <%=user_id %></h1>	
<%	
		}
%>
<%	
	}
%>
	
	
</body>
</html>