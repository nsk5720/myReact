<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="Generator" content="Notepad++" />
	<meta name="Author" content="남상권"/>
	<meta name="Keywords" content="남상권, namsangkwon, 포트폴리오, 남상권 포트폴리오, portfolio, SanKwon's portfolio, 프로젝트, Project, 남 상권, 남 상 권, 상권 남, 상권, HTML5, CSS3, jQuery, 프로젝트, Portfolio, Project, 반응형웹, 반응형웹 포트폴리오, 학생 포트폴리오"/>
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다." />
	<!-- <meta http-equiv="refresh" content="5; url=sub03/sub03Login.jsp"> -->
	<link rel="icon" href="/project03/images/favicon.ico">
	<title>농협은행 메인페이지</title>
	<!--[if gte IE 9]>
	<style>
		.gradient{
			filter: none;
		}
	</style>
	<![endif]-->
	<link rel="stylesheet" href="/project03/css/common.css"/>
	<link rel="stylesheet" href="/project03/css/style.css"/>
	<script src="/project03/js/jquery-1.12.3.js"></script>
	<script src="/project03/js/script.js"></script>
	<script src="/project03/js/count.js"></script>
	<script src="/project03/js/slideBtn.js"></script>
	<script src="/project03/js/jsPop.js"></script>
	<script src="/project03/js/signup.js"></script>
	


</head>
<body onLoad="ddaycount()">
	<div class="pop" onLoad="ddaycount()">
		<div class="popHeader">
			<div>코로나19 관련 영업점<br>
			영업시간 조정 안내
			</div>
		</div>		
		<div class="popContent">
			<p>코로나19 확산 방지를 위한 농협은행, 농·축협<br>
				영업점의 영업시간 조정을 안내드립니다.</p>
			<p class="subPopContent">* 은행 탄력점포 및 공공출장소, 농·축협 금융점포는 해당<br>
				 &nbsp;&nbsp;영업점으로 확인</p>
			<div class="popContentBox">
				<ul>
					<li>대상영업점 : 모든 영업점</li>
					<li>영업시간 : 09:30~15:30 (1시간 단축)</li>
					<li>적용 기간 : 코로나 종식까지</li>
				</ul>
				<div id="countwrap">
					<!-- <span id="countment">적용 기간: 코로나 종식까지</span> -->
					<div class="counter">
						<ul class="cf">
							<li id="countD" class="firstli fl">
								<img src="images/num0.png" width="20" id="day100" class="fl" alt="일자100의자리"/>
								<img src="images/num0.png" width="20" id="day10" class="fl" alt="일자10의자리"/>
								<img src="images/num0.png" width="20" id="day1" class="fl" alt="일자10의자리"/>
								<p>일</p>
							</li>
							<li id="counterH" class="fl">
								<img src="images/num0.png" width="20" id="hour10" class="fl" alt="시간10의자리" />
								<img src="images/num0.png" width="20" id="hour1" class="fl" alt="시간1의자리" />
								<p>시</p>
							</li>
							<li id="counterM" class="fl">
								<img src="images/num0.png" width="20" id="min10" class="fl" alt="분10의자리"/>
								<img src="images/num0.png" width="20" id="min1" class="fl" alt="분1의자리" />
								<p>분</p>
							</li>
							<li id="counterS" class="fl">
								<img src="images/num0.png" width="20" id="sec10" class="fl" alt="초10의자리"/>
								<img src="images/num0.png" width="20" id="sec1" class="fl" alt="초1의자리" />
								<p>초</p>
							</li>
						</ul>
					</div>
				</div>	
			</div>
			
		</div>		
		<div class="popFooter">
			<label class="cf">
				<input type="checkbox"/><span><a href="#" tabindex="1">오늘 하루 창 열지 않기</a></span>
			</label>
			<div><a href="#" tabindex="2">확인</a></div>
		</div>
	</div>
	<%@ include file="/main/headerKoLogin.jsp" %>
	<section class="cf">
		<div id="sectionTop" class="cf">
			<div class="quickBar">
				<ul >
					<li><a class="showTooltip" title="영업점찾기" href="/project03/sub02/sub02Login.jsp" tabindex="258">영업점찾기</a></li>
					<li><a class="showTooltip" title="이용안내" href="/project03/sub02/sub02Login.jsp" tabindex="259">이용안내</a></li>
					<li><a class="showTooltip" title="FAQ" href="/project03/sub02/sub02Login.jsp" tabindex="260">FAQ</a></li>
					<li><a class="showTooltip" title="인증센터" href="/project03/sub02/sub02Login.jsp" tabindex="261">인증센터</a></li>
					<li><a class="showTooltip" title="사고분실신고" href="/project03/sub02/sub02Login.jsp" tabindex="262">사고분실<br>신고</a></li>
					<li><a class="showTooltip" title="상품공시실" href="/project03/sub02/sub02Login.jsp" tabindex="263">상품공시실</a></li>
					<li><a class="showTooltip" title="금융소비자보호" href="/project03/sub02/sub02Login.jsp" tabindex="264">금융소비자보호</a></li>
					<li><a class="showTooltip" title="고객센터" href="/project03/sub02/sub02Login.jsp" tabindex="265">고객센터 <span>1661-3000</span></a></li>
				</ul>
			</div>
			<div id="mainTop" class="c">
				<div id="imageSlide" class="fr">
					<ul>
						<a href="#prev" onclick="return prevGallery();" class="slideLeftbtn"><img  src="images/slideBtnLeft.png" alt="슬라이디 이미지 이동 버튼"/></a>
						<li class="imgSlide"><a href="/project03/board/listArticles.do"><img id="mainSlideimage" class="showTooltip" src="images/img_main_slide01.png" alt="이미지 슬라이드" title="NH WM 마스터즈 출범안내"/></a></li>
						<li ><a href="#"><img id="mainSlideimage2" class="showTooltip" src="images/img_main_slide02.png" alt="이미지 슬라이드" title="NH WM 마스터즈 출범안내"/></a></li>
						<li ><a href="#"><img id="mainSlideimage3" class="showTooltip" src="images/img_main_slide03.png" alt="이미지 슬라이드" title="2023년 새만금 기념주화 예약접수 안내"/></a></li>
						<a href="#next" onclick="return nextGallery();" class="slideRightbtn"><img  src="images/slideBtnRight.png" alt="슬라이디 이미지 이동 버튼"/></a>
					</ul>
				</div>
				 <div id="summerImg" >
					<a href="/project03/sub03/sub03Login.jsp"><img src="images/mainCoolSummer.png" alt="happy summer image" title="happy summer" class="showTooltip"  /></a>
				</div>
				<div id="quickMenu">
					<div class="bigTextBanking fl">
						<a href="/project03/sub02/sub02Login.jsp" tabindex="266"><img src="images/ico_quickbank0401_off.png" alt="큰글뱅킹" title="큰글뱅킹" class="showTooltip" style="top: 0px;"/><br><div>큰글뱅킹</div></a>
					</div>
					<div class="tradeList fl">
						<a href="/project03/sub03/sub03Login.jsp" tabindex="267"><img src="images/ico_quickbank02_off.png" alt="거래내역" title="거래내역" class="showTooltip"/><br><div>거래내역</div></a>
					</div>
					<div class="transfer fl">
						<a href="/project03/board/listArticles.do" tabindex="268"><img src="images/ico_quickbank03_off.png" alt="즉시이체" title="즉시이체" class="showTooltip"/><br><div>즉시이체</div></a>
					</div>
					<div class="searching fl">
						<a href="/project03/sub02/sub02Login.jsp" tabindex="269"><img src="images/ico_quickbank01_off.png" alt="계좌조회" title="계좌조회" class="showTooltip"/><br><div>계좌조회</div></a>
					</div>
					<div class="depositEntry fl">
						<a href="/project03/sub03/sub03Login.jsp" tabindex="270"><img src="images/ico_quickbank05_off.png" alt="예금가입" title="예금가입" class="showTooltip"/><br><div>예금가입</div></a>
					</div>
					<div class="fundSubscription fl">
						<a href="/project03/board/listArticles.do" tabindex="271"><img src="images/ico_quickbank06_off.png" alt="펀드가입" title="펀드가입" class="showTooltip"/><br><div>펀드가입</div></a>
					</div>
					<div class="loanSubscription fl">
						<a href="/project03/sub02/sub02Login.jsp" tabindex="272"><img src="images/ico_quickbank07_off.png" alt="대출가입" title="대출가입" class="showTooltip"/><br><div>대출가입</div></a>
					</div>
					<div class="quickSearch	fl">
						<a href="/project03/sub03/sub03Login.jsp" tabindex="273"><img src="images/ico_quickbank08_off.png" alt="빠른조회" title="빠른조회" class="showTooltip"/><br><div>빠른조회</div></a>
					</div>
				</div>
			</div>
		</div>
		
		<div id="sectionMiddle">
			<div id="mainMiddle">
				<div id="eventTitle">NHBank와 함께!</div>
				<div id="eventList">
					<ul class="tab">
						<li class="active"><a href="#" tabindex="274" class="tabAll showTooltip" title="전체">전체</a></li>
						<li><a class="showTooltip" href="#" tabindex="275" title="이벤트만 보기">이벤트만 보기</a></li>
						<li><a class="showTooltip" href="#" tabindex="276" title="상품만 보기">상품만 보기</a></li>
					</ul>
				</div>
				<div id="eventIntroduction" class="cf cb">
					<div class="tabContent">
						<div class="all">
							<a class="showTooltip" href="sub01/sub01Login.jsp" tabindex="277" title="비대면 펀드 가입 이벤트"><div class="coolSummer">
									<img src="images/img_thumb_event_01.jpg" alt="beachEmoticon" title="비치이벤트" class="evnetImages showTooltip"/>
									<img src="images/ico_thumb_event.png" alt="event" title="이벤트" class="event showTooltip"/>
									<br>
									<div class="eventText">
									COOL SUMMER<br>
									HOT FUND!<BR>
									비대면 펀드 가입 이벤트
									</div>
									<div class="eventDay">
									2022.07.01.~08.31.
									</div>
								</div>
							</a>
							<a class="showTooltip" href="/project03/sub02/sub02Login.jsp" tabindex="278" title="NH매일적금"><div class="daily">
									<img src="images/ico_thumb_nch.png" alt="농축협" title="농축협" class="showTooltip eventCategory"/>
									<div class="brandName">NH매일적금</div>
									<div class="brandSlogan">티끌을 모아보자</div>
									<div class="brandDescription">목적자금 마련을 위한<br>
									비대면 전용 자유적립식 상품</div>
								</div>
							</a>
							<a class="showTooltip" href="/project03/sub03/sub03Login.jsp" tabindex="279" title="스윗 썸머드림 환전 송금 페스티벌 이벤트"><div class="sweetSummer">
									<img src="images/img_thumb_event_02.jpg" alt="beachEmoticon" title="beachEmoticon" class=" showTooltip evnetImages"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class=" showTooltip event"/>
									<br>
									<div class="eventText">
									스윗 썸머드림<br>
									환전&bull;송금 페스티벌<BR>
									이벤트
									</div>
									<div class="eventDay">
									2022.07.01.~08.31.
									</div>
								</div>
							</a>
							<a class="showTooltip" href="/project03/board/listArticles.do" tabindex="280" title="신나는 직장인 대출"><div class="officeWorker">
									<img src="images/ico_thumb_nh.png" alt="농협은행" title="농협은행" class="eventCategory showTooltip"/>
									<div class="brandName">신나는<br>직장인 대출</div>
									<div class="brandSlogan">공무원/교직원/공기업 임직원<br>신용대출</div>
									<div class="brandDescription">공무원, 사립학교 교직원, 당행 선정<br>우량기업 임직원 대상 신용대출 상품</div>
								</div>
							</a>
							<a class="showTooltip" href="/project03/sub02/sub02Login.jsp" tabindex="281" title="비대면 정기예금 특판 이벤트"><div class="deposit">
									<img src="images/img_thumb_event_03.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									NH농협은행 비대면<br>
									정기예금 특판 이벤트
									</div>
									<div class="eventDay">
									2022.07.01.~08.31.
									</div>
								</div>
							</a>
							<a class="showTooltip" href="/project03/sub03/sub03Login.jsp" tabindex="282" title="NH콕마이카 신용대출"><div class="loan">
									<img src="images/ico_thumb_nch.png" alt="농축협" title="농축협" class="eventCategory showTooltip"/>
									<div class="brandName">NH콕마이카<br>신용대출</div>
									<div class="brandSlogan">자동차 구매자금 대출의 모든 길</div>
									<div class="brandDescription">Nh콕마이카(스마트뱅킹)에서<br>차량견적 받으면 최대 연 0.5%p<br>금리혜택 제공</div>
								</div>
							</a>
						</div>
						<div class="onlyEvent cf">
							<a href="/project03/board/listArticles.do" tabindex="283" class="showTooltip" title="비대면 펀드 가입 이벤트">
								<div class="coolSummer fl">
									<img src="images/img_thumb_event_01.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									COOL SUMMER<br>
									HOT FUND!<BR>
									비대면 펀드 가입 이벤트
									</div>
								</div>
							</a>
							<a href="/project03/sub03/sub03Login.jsp" tabindex="284" class="showTooltip" title="스윗 썸머드림 환전 송금 페스티벌 이벤트">
								<div class="sweetSummer fl">
									<img src="images/img_thumb_event_02.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									스윗 썸머드림<br>
									환전&bull;송금 페스티벌<BR>
									이벤트
									</div>
								</div>
							</a>
							<a href="/project03/sub02/sub02Login.jsp" tabindex="285" class="showTooltip" title="비대면 정기예금 특판 이벤트">
								<div class="deposit fl">
									<img src="images/img_thumb_event_03.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip fl"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									NH농협은행 비대면<br>
									정기예금 특판 이벤트
									</div>
								</div>
							</a>
							<a href="/project03/sub02/sub02Login.jsp" tabindex="285" class="showTooltip" title="비대면 정기예금 특판 이벤트">
							<div class="allOneTime fl">
									<img src="images/img_thumb_event_04.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip fl"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									All One Time<br>
									방문예약 서비스 고도화 오픈 이벤트
									</div>
								</div>
							</a>
							<a href="/project03/sub02/sub02Login.jsp" tabindex="285"sub02Login.jsphowTooltip" title="비대면 정기예금 특판 이벤트">
								<div class="cultureHolic fl">
									<img src="images/img_thumb_event_05.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip fl"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									NH컬쳐홀릭<br>
									새로운 문화/공연에 초대 이벤트
									</div>
								</div>
							</a>
							<a href="/project03/sub02/sub02Login.jsp" tabindex="285" class="showTooltip" title="비대면 정기예금 특판 이벤트">
								<div class="deposit fl">
									<img src="images/img_thumb_event_06.jpg" alt="beachEmoticon" title="beachEmoticon" class="evnetImages showTooltip fl"/>
									<img src="images/ico_thumb_event.png" alt="event" title="event" class="event showTooltip"/>
									<br>
									<div class="eventText">
									「하하호호 FESTIVAL」<br>
									주택청약종합저축 이벤트
									</div>
								</div>
							</a>
						</div>
						<div class="onlyGoods cf">
							<a href="/project03/sub02/sub02Login.jsp" tabindex="286" class="showTooltip" title="NH매일적금">
								<div class="daily fl">
									<img src="images/ico_thumb_nch.png" alt="농축협" title="농축협" class="eventCategory showTooltip"/>
									<div class="brandName">NH매일적금</div>
									<div class="brandSlogan">티끌을 모아보자</div>
									<div class="brandDescription">목적자금 마련을 위한<br>
									비대면 전용 자유적립식 상품</div>
								</div>
							</a>
							<a href="/project03/board/listArticles.do" tabindex="287" class="showTooltip" title="신나는 직장인 대출">
								<div class="officeWorker fl">
									<img src="images/ico_thumb_nh.png" alt="농협은행" title="농협은행" class="eventCategory showTooltip"/>
									<div class="brandName">신나는<br>직장인 대출</div>
									<div class="brandSlogan">공무원/교직원/공기업 임직원<br>신용대출</div>
									<div class="brandDescription">공무원, 사립학교 교직원, 당행 선정<br>우량기업 임직원 대상 신용대출 상품</div>
								</div>
							</a>
							<a href="/project03/sub03/sub03Login.jsp" tabindex="288" class="showTooltip" title="NH새내기 직장인 신용대출">
								<div class="loan fl">
									<img src="images/ico_thumb_nch.png" alt="농축협" title="농축협" class="eventCategory showTooltip"/>
									<div class="brandName">NH새내기직장인<br>신용대출</div>
									<div class="brandSlogan">입사 3개월이면 대출 신청 가능</div>
									<div class="brandDescription">재직 3개월 이상 직장인 신용대출<br>최저 연3.22부터 ~ 최대 2,000만원까지 </div>
								</div>
							</a>
							<a href="/project03/sub03/sub03Login.jsp" tabindex="288" class="showTooltip" title="NH직장인 월복리적금">
								<div class="compoundInterest fl">
									<img src="images/ico_thumb_nh.png" alt="농협은행" title="농협은행" class="eventCategory showTooltip"/>
									<div class="brandName">NH직장인<br>월복리적금</div>
									<div class="brandSlogan">직장인 재테크 상품</div>
									<div class="brandDescription">급여이체 및 교차거래 실적에 따라<br>우대금리를 제공하는 직장인 재테크<br>월복리 적금상품 </div>
								</div>
							</a>
							<a href="/project03/sub03/sub03Login.jsp" tabindex="288" class="showTooltip" title="콕!BASIC적금 [자유로부금]">
								<div class="basicSaving fl">
									<img src="images/ico_thumb_nch.png" alt="농축협" title="농축협" class="eventCategory showTooltip"/>
									<div class="brandName"> 콕!BASIC적금<br>[자유로부금]</div>
									<div class="brandSlogan">모바일 전용 자유적립식 적금!</div>
									<div class="brandDescription">적립은 자유롭게 우대금리는 손쉽게<br>받을 수 있는 비대면 가입 자유적립 적금</div>
								</div>
							</a>
							<a href="/project03/sub03/sub03Login.jsp" tabindex="288" class="showTooltip" title=">NH왈츠회전예금">
								<div class="waltz fl">
									<img src="images/ico_thumb_nh.png" alt="농협은행" title="농협은행" class="eventCategory showTooltip"/>
									<div class="brandName">NH왈츠회전예금ll</div>
									<div class="brandSlogan">회전주기 실세금리적용 상품</div>
									<div class="brandDescription">월단위로 회전주기를 선택할 수 있고<br>회전주기마다 실세금리를 적용하는<br>개인전용 회전예금</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="sectionLow">
			<div id="mainLow">
				<div class="newsService">
					<div id="newNews">
						<h2>
							<span class="hidden">새소식</span>
						</h2>
						<div class="newsContent">
							<div class="news">새소식</div>
							<div class="btn"><a href="/project03/board/listArticles.do" tabindex="289"><img src="images/btn_detail_more.png" alt="detail button" class="showTooltip" title="detail button"/></a></div>
							<div class="newsList">
								<div class="hover first">최근 유행 신종 금융사고 수법</div>
								<div class="hover ellipsis">추가대출거래약정서(가계용)약정서약정서약정서</div>
								<div class="hover ellipsis">금융상품 몰 내 [자산설계]서비스서비스서비스</div>
							</div>
						</div>
					</div>
					<div id="weatherNews" class="cf">
						<h2>
							<span class="hidden">날씨 서비스</span>
						</h2>
						<div class="newsContent">
							<div class="news">날씨 서비스</div>
							<div class="cicon"></div>
								<div class="goBank">은행 <span>방문하기</span> 딱 좋은 날씨~ </div>
								<div class="cDate"></div>
								<div class="weatherLeft">
									<div class="ctemp"><span>현재</span> 온도 : </div>
									<div class="clowtemp"><span>최저</span> 온도 : </div>
								</div>
								<div class="weatherRight">
									<div class="chightemp"><span>최고</span> 온도 : </div>
									<div class="humidity"><span>습도 : </span></div>
								</div>
						</div>
					</div>
				</div>	
				<div id="securityService">
					<div><a href="/project03/sub02/sub02Login.jsp" tabindex="290"><img src="images/img_prev_banner_security.png" alt="securityService" class="showTooltip" title="securityService"/></a>
					</div>
					<a title="금융소비자보호" class="showTooltip" href="/project03/sub03/sub03Login.jsp" tabindex="291"><div class="bannerConsumerProtection">금융소비자보호 <img src="images/bl_link_arrow_off.png" alt="bannerConsumerProtection" />
						</div></a>
					<a href="/project03/board/listArticles.do" tabindex="292" class="showTooltip" title="주택도시기금"><div class="huFund">주택도시기금 <img src="images/bl_link_arrow_off.png" alt="huFund"/>
						</div></a>
					<a class="showTooltip" title="에스크로" href="/project03/sub02/sub02Login.jsp" tabindex="293"><div class="escrow">에스크로 <img  src="images/bl_link_arrow_off.png" alt="escrow" />
						</div></a>
				</div>	
				<div id="bannerSlide" class="fl">
					<a href="/project03/board/listArticles.do" tabindex="294" ><img src="images/nh_event1.png" alt="농협 이벤트"/></a>
					<a class="alt" href="/project03/sub02/sub02Login.jsp" tabindex="295" ><img src="images/nh_event2.png" alt="농협 이벤트"/></a>
					<a class="alt" href="/project03/sub03/sub03Login.jsp" tabindex="296" ><img src="images/nh_event3.png" alt="농협 이벤트"/></a>
					<a class="alt" href="/project03/sub02/sub02Login.jsp" tabindex="297" ><img src="images/nh_event4.jpg" alt="농협 이벤트"/></a>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../main/footer.jsp" %><br>
</body>
</html>