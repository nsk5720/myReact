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
<c:choose>
   <c:when test='${msg=="addMember" }'>
      <script>
         window.onload=function(){
            alert("회원을 등록했습니다.");
         }
      </script>
   </c:when>
   <c:when test='${msg=="modified" }'>
      <script>
        window.onload=function(){
          alert("회원 정보를 수정했습니다.");
        }
      </script>
   </c:when>
   <c:when test= '${msg=="deleted" }'>
      <script>
         window.onload=function(){
            alert("회원 정보를 삭제했습니다.");
        } 
      </script>
</c:when>
</c:choose>
	<meta charset="UTF-8">
	<title>회원 정보 출력창</title>
	<link rel="stylesheet" href="css/common.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<style>
	.title{width: 1100px; height: 50px; margin: 0 auto; }
	.title > div {width: 14%; height: 50px; float: left; line-height: 50px; border: 1px solid #333; box-sizing: border-box; background: #efefef;}
	.content{width: 1100px; height: 30px; margin: 0 auto; }
	.content > div{width: 14%; height: 30px; float: left; line-height: 30px; border: 1px solid #333; box-sizing: border-box;}
	.ellipsis{white-space: nowrap; overflow: hidden; text-overflow: ellipsis;}
	.memberInfo{text-align:center; font-size:50px; margin:50px;}
	.memberjoin{text-align:center; font-size:30px; margin:30px; color: #333; border: 1px solid #333}
	</style>
</head>
<body>
	<%@ include file="../main/header.jsp" %>
	<p class=memberInfo> 회원정보 </p>
	<div align="center" border="1">
		<div class="title" align="center" bgcolor="lightgreen">
			<div width="7%"><b>아이디</b></div>
			<div width="7%"><b>비밀번호</b></div>
			<div width="7%"><b>이름</b></div>
			<div width="7%"><b>이메일</b></div>
			<div width="7%"><b>가입일</b></div>
			<div width="7%" ><b>수정</b></div>
			<div width="7%" ><b>삭제</b></div>
		</div>
<c:choose>
	<c:when test="${empty membersList }">
		<div>
			<div colspan=5 align="center">
				<b>등록된 회원이 없습니다.</b>
			</div>
		</div>
	</c:when>
	<c:when test="${!empty membersList }" >
		<c:forEach var="mem" items="${membersList }">
		<div class="content" align="center">
			<div class="ellipsis">${mem.id }</div>
			<div class="ellipsis">${mem.pwd }</div>
			<div class="ellipsis">${mem.name }</div>
			<div class="ellipsis">${mem.email }</div>
			<div class="ellipsis">${mem.joinDate }</div>
			<div ><a href="${contextPath}/member/modMemberForm.do?id=${mem.id }">수정</a></div>
		    <div><a href="${contextPath}/member/delMember.do?id=${mem.id }">삭제</a></div>
		</div>
		</c:forEach>
	</c:when>
</c:choose>
	</div>
	<a href="#"><p class="memberjoin">회원가입하기</p></a>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>