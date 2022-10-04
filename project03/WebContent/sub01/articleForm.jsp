<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<c:set  var="articlesList"  value="${articlesMap.articlesList}" />
<c:set  var="totArticles"  value="${articlesMap.totArticles}" />
<c:set  var="section"  value="${articlesMap.section}" />
<c:set  var="pageNum"  value="${articlesMap.pageNum}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
	<link rel="stylesheet" href="/project03/sub01/css/board.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/style.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/common.css"/>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	/* 제이쿼리를 이용해서 이미지 파일 첨부 시 미리보기 기능을 구현 */
	function readURL(input){
		if(input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#preview').attr('src',e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	function backToList(obj) {
		obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
	}
</script>
</head>
<body>
	<%@ include file="../main/header.jsp" %>
	<section style="height:800px;">
<h1 class="newBoard">새글 쓰기</h1>
	<form name="articleForm" method="post" action="${contextPath }/board/addArticle.do" enctype="multipart/form-data">
		<div class="boardWrap">
			<div class="titlePart">
				<div class="fl titleLeft">글제목:</div>
				<div class="fl titleRight" colspan="2"><input type="text" size="67" maxlength="500" name="title"/></div>
			</div>
			<div class="contentPart">
				<div class="fl contentLeft" valign="top">글내용:</div>
				<div class="fl contentRight" colspan="2"><textarea name="content" rows="10" cols="65" maxlength="4000"></textarea> </div>
			</div>
			<div class="imagePart">
				<div class="fl imageLeft">이미지파일 첨부:</div>
				<div class="fl fileSelect"colspan="2"><input type="file" name="imageFileName" onchange="readURL(this);"/></div>
				<div class="fl imagePreview"><img id="preview" src="#" width=200 height=200/></div>
			</div>
				<div class="fl" class="wirteButton">
					<input class="write" type="submit" value="글쓰기"/>
					<input class="reset" type="button" value="목록보기" onClick="backToList(this.form)"/>
				</div>
		</div>
	</form>
	</section>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>