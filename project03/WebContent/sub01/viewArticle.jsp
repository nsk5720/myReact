<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<head>
   <meta charset="UTF-8">
   <title>글보기</title>
   <style>
     #tr_btn_modify{
       display:none;
       margin-top:100px;
     }
   
   </style>
   	<link rel="stylesheet" href="/project03/sub01/css/board.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/style.css"/>
	<link rel="stylesheet" href="/project03/sub01/css/common.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
     function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
</head>
<body>
	<%@ include file="../main/header.jsp" %>
	<section>
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
			<aside id="aside" class="fl cf">
				<ul class="customerCounseling">
					<li class="ccTitle"><a href="/project03/index.jsp" tabindex="253" class="ccTitle showTooltip" title="고객상담">&nbsp;&nbsp;고객상담</a></li>
					<li class="ccListFirst"><a href="/project03/sub02/sub02.jsp" tabindex="254" class="ccListFirst showTooltip" title="고객의소리">&nbsp;&nbsp;고객의소리</a></li>
					<li><a href="/project03/sub03/sub03.jsp" tabindex="255" class="ccList showTooltip" title="자주하는질문FAQ">&nbsp;&nbsp;자주하는질문FAQ</a></li>
					<li><a href="/project03/index.jsp" tabindex="256" class="ccListShort showTooltip" title="상담원상담">&nbsp;&nbsp;상담원상담</a></li>
					<li><a href="/project03/sub02/sub02.jsp" tabindex="257" class="ccList showTooltip" title="1:1문의">&nbsp;&nbsp;1:1문의</a></li>
				</ul>	<!-- class="passBtn" -->
			</aside>
			<article id="contents" class="fl cf" >
			<h3>
				<span class="hidden">자주묻는질문FAQ</span>
			</h3>
				<div id="high" class="fl cf">
					<ul class="path">
						<li class="pathColor showTooltip" title="자주묻는질문FAQ">&nbsp;고객의소리</li>
						<li><a class="showTooltip" href="/project03/sub03/sub03.jsp" tabindex="258" title="고객상담">&nbsp;고객상담 ></a> </li>
						<li><a class="showTooltip" href="/project03/index.jsp" tabindex="259" title="고객센터">고객센터 ></a></li>
					</ul>
					<div class="faq showTooltip" title="자주묻는 질문">고객의 소리</div>
					<ul class="description">
						<li class="descriptionFirst">고객님들의 목소리를 귀담아 듣겠습니다.</li>
						<li class="descriptionSecond">여기서 다 해결되지 않는 문의사항은 1:1문의를 이용해주세요.</li>
					</ul>
					<div class="inquiry"><a class="showTooltip" href="/project03/sub02/sub02.jsp" tabindex="260" title="1:1문의">1:1문의</a></div>
				</div>	
				<div id="middle" class="fl" style="height:100px;">
					<div class="search">
					<div class="fl">검색</div>
					<input type="text" name="search" class="fl"/>
					<a href="#" tabindex="260"><div class="searchButton fl"></div></a>
					</div>
				</div>
				
				
				
				
				<div id="low" class="fl cf">
				  <form name="frmArticle" method="post"  action="${contextPath}"  enctype="multipart/form-data">
			      	<div>
				  		<div class="viewNo">
					  		<div class="fl" align="right" margin-right= "5px">
						  		글번호
							</div>
							<div class="fl" border= "2px solid white">
								<input type="text"  value="${article.articleNO }"  disabled />
								<input type="hidden" name="articleNO" value="${article.articleNO}"  />
							</div>
						</div>
						<div class="viewId fl">
							<div class="viewIdText">
								작성자 아이디
							</div>
							<div>
								<input type=text value="${article.id }" name="writer"  disabled />
							</div>
						</div>
						<div class="viewTitle fl">
							<div>
								<input type=text value="${article.title }"  name="title"  id="i_title" disabled />
							</div>   
						</div>
						<div class="viewContent">
							<div>
								<textarea rows="20" cols="60"  name="content"  id="i_content"  disabled />${article.content }</textarea>
							</div>  
						</div>
						<c:if test="${not empty article.imageFileName && article.imageFileName!='null' }">  
					    <div class="viewImage fl">
							<div align="left">
								이미지
							</div>
							<div>
								<input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
								<img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
							</div>   
						<input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
						</div>
						</c:if>
						<div class="viewDay fr">
							<div>
								등록일자
							</div>
							<div>
								<input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled />
							</div>   
						</div>
						<div   id="tr_btn_modify"  >
							<div colspan="2"   align="center" >
								<input type=button value="수정반영하기"   onClick="fn_modify_article(frmArticle)"  >
								<input type=button value="취소"  onClick="backToList(frmArticle)">
							</div>   
						</div> 
						<div  id="tr_btn">
							<div colspan="2" align="center">
								<input type=button value="수정하기" onClick="fn_enable(this.form)">
								<input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
								<input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
								<input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
						    </div>
					  </div>
					</div>
				  </form>
				</div>
 	</section>
 	<%@ include file="../main/footer.jsp" %>
	
</body>
</html>