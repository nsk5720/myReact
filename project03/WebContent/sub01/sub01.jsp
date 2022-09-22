<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="남상권"/>
	<meta name="Keywords" content="남상권, namsangkwon, 포트폴리오, 남상권 포트폴리오, portfolio, SanKwon's portfolio, 프로젝트, Project, 남 상권, 남 상 권, 상권 남, 상권, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<link rel="icon" href="images/favicon.ico">
	<title>농협은행 게시판</title>
	<!--[if gte IE 9]>
	<style>
		.gradient{
			filter: none;
		}
	</style>
	<![endif]-->
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/common.css"/>
	<script src="js/jquery-1.12.3.js"></script>
	<script src="js/script.js"></script>
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
					<li class="ccTitle"><a href="../index.jsp" tabindex="253" class="ccTitle showTooltip" title="고객상담">&nbsp;&nbsp;고객상담</a></li>
					<li class="ccListFirst"><a href="../sub02/sub02.jsp" tabindex="254" class="ccListFirst showTooltip" title="고객의소리">&nbsp;&nbsp;고객의소리</a></li>
					<li><a href="../sub03/sub03.jsp" tabindex="255" class="ccList showTooltip" title="자주하는질문FAQ">&nbsp;&nbsp;자주하는질문FAQ</a></li>
					<li><a href="../index.jsp" tabindex="256" class="ccListShort showTooltip" title="상담원상담">&nbsp;&nbsp;상담원상담</a></li>
					<li><a href="../sub02/sub02.jsp" tabindex="257" class="ccList showTooltip" title="1:1문의">&nbsp;&nbsp;1:1문의</a></li>
				</ul>	<!-- class="passBtn" -->
			</aside>
			<article id="contents" class="fl cf" >
			<h3>
				<span class="hidden">자주묻는질문FAQ</span>
			</h3>
				<div id="high" class="fl cf">
					<ul class="path">
						<li class="pathColor showTooltip" title="자주묻는질문FAQ">&nbsp;고객의소리</li>
						<li><a class="showTooltip" href="../sub03/sub03.jsp" tabindex="258" title="고객상담">&nbsp;고객상담 ></a> </li>
						<li><a class="showTooltip" href="../index.jsp" tabindex="259" title="고객센터">고객센터 ></a></li>
					</ul>
					<div class="faq showTooltip" title="자주묻는 질문">고객의 소리</div>
					<ul class="description">
						<li class="descriptionFirst">고객님들의 목소리를 귀담아 듣겠습니다.</li>
						<li class="descriptionSecond">여기서 다 해결되지 않는 문의사항은 1:1문의를 이용해주세요.</li>
					</ul>
					<div class="inquiry"><a class="showTooltip" href="../sub02/sub02.jsp" tabindex="260" title="1:1문의">1:1문의</a></div>
				</div>	
				<div id="middle" class="fl">
					<div class="search">
					<div class="fl">검색</div>
					<input type="text" name="search" class="fl"/>
					<a href="#" tabindex="260"><div class="searchButton fl"></div></a>
					</div>
					<div class="searchList ">
						<div>원하시는 항목을 선택하세요</div>
						<ul>
							<li>
								<span><a title="전체" href="../sub03/sub03.jsp" tabindex="261" class="all showTooltip">전체</a></span>
								<span><a class="showTooltip" title="예금" href="../index.jsp" tabindex="262">예금</a></span>
								<span><a class="showTooltip" title="펀드/신탁" href="../sub02/sub02.jsp" tabindex="263">펀드/신탁</a></span>
								<span><a class="showTooltip" title="주택청약" href="../sub03/sub03.jsp" tabindex="264">주택청약</a></span>
								<span><a class="showTooltip" title="대출" href="../index.jsp" tabindex="265">대출</a></span>
								<span><a class="showTooltip" title="인증서/간편로그인" href="../sub02/sub02.jsp" tabindex="266">인증서/간편로그인</a></span>
								<span><a class="showTooltip" title="입출금알림" href="../sub03/sub03.jsp" tabindex="267">입출금알림</a></span>
								<span><a class="showTooltip" title="오픈뱅킹" href="../index.jsp" tabindex="268">오픈뱅킹</a></span>
								<span><a class="showTooltip" title="텔레뱅킹" href="../sub02/sub02.jsp" tabindex="269">텔레뱅킹</a></span>
								<span><a class="showTooltip" title="전자금융사기예방서비스" href="../sub03/sub03.jsp" tabindex="270">전자금융사기예방서비스</a></span>
								<span><a class="showTooltip" title="기타앱서비스" href="../index.jsp" tabindex="271">기타앱서비스</a></span>
								<span><a class="showTooltip" title="자동화기기" href="../sub02/sub02.jsp" tabindex="272">자동화기기</a></span>
								<span><a class="showTooltip" title="자동이체" href="../sub03/sub03.jsp" tabindex="273">자동이체</a></span>
								<span><a class="showTooltip" title="우수고객" href="../index.jsp" tabindex="274">우수고객</a></span>
								<span><a class="showTooltip" title="외환" href="../sub02/sub02.jsp" tabindex="275">외환</a></span>
								<span><a class="showTooltip" title="기타" href="../sub03/sub03.jsp" tabindex="276">기타</a></span>
								<span><a class="showTooltip" title="인터넷/스마트뱅킹" href="../index.jsp" tabindex="277">인터넷/스마트뱅킹</a></span>
							</li>
						</ul>
					</div>
				</div>
				<div id="low" class="fl cf">
					<form action="#">
					<select name="order">
						<option value="선택">선택</option>
						<option value="회순">조회순</option>
						<option value="등록일순">등록일순</option>
					</select>
					<button class="showTooltip" type="submit" title="검색">검색</button>
					</form>
					<div id="table">
						<div id="firstNum" class="fl">순번</div>
						<div id="firstCategory" class="fl">구분</div>
						<div id="firstTitle" class="fl">제목</div>
						<div id="firstDate" class="fl">날짜</div>
						<div class="num fl" >777</div>
						<div class="category fl">대출</div>
						<div class="title fl"><a class="showTooltip" href="../sub02/sub02.jsp" tabindex="278" title="비대면으로 기한연기 신청 가능한가요?">예금담보대출관련해서 혹시 예금 만기가 지난후에도 원금 상환을 못하면 어떻게되나요?</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >776</div>
						<div class="category fl">기타</div>
						<div class="title fl"><a class="showTooltip" href="../sub03/sub03.jsp" tabindex="279" title="요즘 유튜브에서 백종원 나오는 농협광고에 배경음악이 궁금해요 애기들 여러명이 함께하는~ 이러고 있는 그 영상에욥">요즘 유튜브에서 백종원 나오는 농협광고에 배경음악이 궁금해요 애기들 여러명이 함께하는~ 이러고 있는 그 영상에욥</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >775</div>
						<div class="category fl">예금</div>
						<div class="title fl"><a class="showTooltip" href="../index.jsp" tabindex="280" title="한도제한계좌 해제는 어디서 하나요?">만기시 타지역 일반농협에서 수령 할 수있나요??</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >774</div>
						<div class="category fl">외화</div>
						<div class="title fl"><a class="showTooltip" href="../sub03/sub03.jsp" tabindex="282" title="외화통장에 있는 달러 은행가서 원화로 달라고 하면 바로 빼주나요? 외화통장 atm에서 사용 가능한가요?">외화통장에 있는 달러 은행가서 원화로 달라고 하면 바로 빼주나요? 외화통장 atm에서 사용 가능한가요?</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >773</div>
						<div class="category fl">예금</div>
						<div class="title fl"><a class="showTooltip" href="../sub02/sub02.jsp" tabindex="281" title="인터넷뱅킹에서 개설한 한도제한계좌 이용한도가 어떻게 되나요?">농협 정기예금 가족이 대리해지 가능한가요?</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >772</div>
						<div class="category fl">대출</div>
						<div class="title fl"><a class="showTooltip" href="../index.jsp" tabindex="283" title="전세대출을 받을수 있으려면 살던곳의 은행에서만 받을수 있나요? 농협말입니다. 거주할 곳의 농협에서 대출받아야 하는건가요.=?">전세대출을 받을수 있으려면 살던곳의 은행에서만 받을수 있나요? 농협말입니다. 거주할 곳의 농협에서 대출받아야 하는건가요.</a></div>
						<div class="date fl">08/16</div>
						<div class="num fl" >771</div>
						<div class="category fl">오픈뱅킹</div>
						<div class="title fl"><a class="showTooltip" href="../sub02/sub02.jsp" tabindex="284" title="농협말고 농축협 계좌도 타 은행 (우리은행) 오픈뱅킹으로 조회가 가능한지 알고 싶습니다.">농협말고 농축협 계좌도 타 은행 (우리은행) 오픈뱅킹으로 조회가 가능한지 알고 싶습니다.</a></div>
						<div class="date fl">08/15</div>
						<div class="num fl" >770</div>
						<div class="category fl">인증서/간편로그인</div>
						<div class="title fl"><a class="showTooltip" href="../sub03/sub03.jsp" tabindex="285" title="농협은행인증서 만료가 되어 연장했는데  농협카드 어플에 들어가니 유효하지않는다고나와요">농협은행인증서 만료가 되어 연장했는데  농협카드 어플에 들어가니 유효하지않는다고나와요</a></div>
						<div class="date fl">08/15</div>
						<div class="num fl" >769</div>
						<div class="category fl">대출</div>
						<div class="title fl"><a class="showTooltip" href="../index.jsp" tabindex="286" title="남편이 사망시 외국인 아내의 농협 주택담보대출은 상속가능합니까?">남편이 사망시 외국인 아내의 농협 주택담보대출은 상속가능합니까?</a></div>
						<div class="date fl">08/15</div>
						<div class="num fl borderBottom" >768</div>
						<div class="category fl borderBottom">주택청약</div>
						<div class="title fl borderBottom"><a class="showTooltip" href="../sub02/sub02.jsp" tabindex="287" title="현재 농협 주택청약 가입되어있는데 청년 우대형 주택청약으로 변경하려고 합니다.">현재 농협 주택청약 가입되어있는데 청년 우대형 주택청약으로 변경하려고 합니다.</a></div>
						<div class="date fl borderBottom">08/14</div>
					</div>
					<div class="writing"><a href="../sub03/sub03.jsp" tabindex="287">글쓰기</a></div>
					<div class="pageNum">
						<div class="pageNumFirst"><a href="../sub03/sub03.jsp" tabindex="288">1</a></div>
						<div><a href="../index.jsp" tabindex="289" class="pageNumber">2</a></div>
						<div><a href="../sub02/sub02.jsp" tabindex="290" class="pageNumber">3</a></div>
						<div><a href="../sub03/sub03.jsp" tabindex="291" class="pageNumber">4</a></div>
						<div><a href="../index.jsp" tabindex="292" class="pageNumber">5</a></div>
						<div><a href="../sub02/sub02.jsp" tabindex="293" class="pageNumber">6</a></div>
						<div><a href="../sub03/sub03.jsp" tabindex="294" class="pageNumber">7</a></div>
						<div><a href="../index.jsp" tabindex="295" class="pageNumber">8</a></div>
						<div><a href="../sub02/sub02.jsp" tabindex="296" class="pageNumber">9</a></div>
						<div class="num10 pageNumber"><a href="../sub03/sub03.jsp" tabindex="297">10</a></div>
						<div class="pageBtn cf">
							<div class="nextPage fl"><a href="../index.jsp" tabindex="298"><img class="showTooltip" src="images/btn_numnext.gif" alt="nextpage" title="nextpage"/></a></div>
							<div class="lastPage fl"><a href="../sub02/sub02.jsp" tabindex="299"><img class="showTooltip" src="images/btn_num10next.gif" alt="lastpage" title="lastpage"/></a></div>
						</div>
					</div>
				</div>
			</article>
		</div>	
	</section>
	<%@ include file="../main/footer.jsp" %>
</body>
</html>