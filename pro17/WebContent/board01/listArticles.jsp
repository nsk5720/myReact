<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<title>글목록창</title>
</head>
<body>
	<table align="center" border="1" width="80%">
		<tr height="10" align="center" bgcolor="lightgreen">
			<td>글번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>작성일</td>
		</tr>
	<c:choose>
		<c:when test="${empty articlesList }">
			<tr height="10">
				<td colspan="4">
					<p align="center">
						<b><span style="font-size:9px;">등록된 글이 없습니다.</span></b>
					</p>
				</td>
			</tr>
		</c:when>
		<c:when test="${!empty articlesList }">
			
		</c:when>		
	</c:choose>	
	</table>
	<a class="cls1" href="#"><p class="cls2">글쓰기</a>
</body>
</html>