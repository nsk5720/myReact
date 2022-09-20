<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
%>

<%--	 <% 전체를 스트립트릿 라고 부름 %> (변수선언 포함 문장)		--%>
<%--	 <%@ 디렉티브 %> (골뱅이 나오는거 / jsp 문서형식선언) 	--%>
<%--	 <% 선언문 %> (아무것도 없는거 / 변수선언) 				--%>
<%-- 	 <%! 선언문 %> (!들어 간거 / 변수선언) 				--%>
<%-- 	 <%= 표현식 %> (=들어간 것 / 변수)			 		--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력창</title>			<!-- 반복을 줄이자 -->
</head>
<body>
		<table border="1" width="800">
			<tr align="center" bgcolor="#ffff66">
				<td colspan="2"><%=dan %> 단 출력</td>
			</tr>
<%
		for(int i=1; i<=9; i++){
			if(i%2==0){
%>
			<tr align="center" bgcolor="#ff0000">
<%			
			} else {
%>
			<tr align="center" bgcolor="#0000ff">
<%			
			}	
%>
				<td width="400"><%=dan %> * <%=i %></td>		<%-- i는 변수라서 <%  %> 해줘야함 --%>
				<td width="400"><%=i*dan %></td> 
			</tr>
<%			
		}	
 %>
		</table>	

</body>
</html>