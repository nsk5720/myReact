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
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="남상권"/>
	<meta name="Keywords" content="남상권, namsangkwon, 포트폴리오, 남상권 포트폴리오, portfolio, SanKwon's portfolio, 프로젝트, Project, 남 상권, 남 상 권, 상권 남, 상권, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="icon" href="/project03/images/favicon.ico">
<meta charset="UTF-8">
<title>글쓰기창</title>
	<link rel="stylesheet" href="/project03/sub01/css/board.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/style.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/common.css"/>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="/project03/sub01/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub01/js/script.js"></script>
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
	<%@ include file="../main/headerLogin.jsp" %>
	<section style="height:1000px;">
		<div id="section">
		<h2>
			<span class="hidden">고객상담</span>
		</h2>
		<h2>
			<span class="hidden">고객의소리</span>
		</h2>
		<h2>
			<span class="hidden">자주하는질문FAQ</span>
		</h2>
		<h2>
			<span class="hidden">상담원상담</span>
		</h2>
		<h2>
			<span class="hidden">1:1문의</span>
		</h2>
		<aside id="aside" class="fl cf" style="height: 100px;">
			<ul class="customerCounseling">
				<li class="ccTitle"><a href="/project03/main/index.jsp" tabindex="253" class="ccTitle showTooltip" title="고객상담">&nbsp;&nbsp;고객상담</a></li>
				<li class="ccListFirst"><a href="/project03/sub02/sub02Login.jsp" tabindex="254" class="ccListFirst showTooltip" title="고객의소리">&nbsp;&nbsp;고객의소리</a></li>
				<li><a href="/project03/sub03/sub03Login.jsp" tabindex="255" class="ccList showTooltip" title="자주하는질문FAQ">&nbsp;&nbsp;자주하는질문FAQ</a></li>
				<li><a href="/project03/main/index.jsp" tabindex="256" class="ccListShort showTooltip" title="상담원상담">&nbsp;&nbsp;상담원상담</a></li>
				<li><a href="/project03/sub02/sub02Login.jsp" tabindex="257" class="ccList showTooltip" title="1:1문의">&nbsp;&nbsp;1:1문의</a></li>
			</ul>	<!-- class="passBtn" -->
		</aside>
		<article id="contents" class="fl cf" style="height: 100px;">
		<h3>
			<span class="hidden">자주묻는질문FAQ</span>
		</h3>
			<div id="high" class="fl cf">
				<ul class="path">
					<li class="pathColor showTooltip" title="자주묻는질문FAQ">&nbsp;고객의소리</li>
					<li><a class="showTooltip" href="/project03/sub03/sub03Login.jsp" tabindex="258" title="고객상담">&nbsp;고객상담 ></a> </li>
					<li><a class="showTooltip" href="/project03/main/index.jsp" tabindex="259" title="고객센터">고객센터 ></a></li>
				</ul>
				<div class="faq showTooltip" title="자주묻는 질문">고객의 소리</div>
				<ul class="description">
					<li class="descriptionFirst">고객님들의 목소리를 귀담아 듣겠습니다.</li>
					<li class="descriptionSecond">여기서 다 해결되지 않는 문의사항은 1:1문의를 이용해주세요.</li>
				</ul>
				<div class="inquiry"><a class="showTooltip" href="/project03/sub02/sub02Login.jsp" tabindex="260" title="1:1문의">1:1문의</a></div>
			</div>	

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