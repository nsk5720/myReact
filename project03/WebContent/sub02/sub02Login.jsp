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
	<meta name="Description" content="남상권의 포트폴리오 사이트입니다. 방문해 주셔서 감사합니다.">
	<link rel="icon" href="/project03/images/favicon.ico">
	<title>농협은행 FAQ게시판</title>  
	<!--[if gte IE 9]>
	<style>
		.gradient{
			filter: none;
		}
	</style>
	<![endif]-->
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/common.css"/>
	<script src="/project03/sub02/js/jquery-1.12.3.js"></script>
	<script src="/project03/sub02/js/script.js"></script>
	<meta charset="UTF-8">
	<title>농협은행 FAQ게시판</title> 
</head>
<body>
	<%@ include file="../main/headerLogin.jsp" %>
	<section>
		<div id="section">
			<h2>
				<span class="hidden">FAQ</span>
			</h2>
			<h2>
				<span class="hidden">기금대출</span>
			</h2>
			<h2>
				<span class="hidden">주택청약</span>
			</h2>
			<h2>
				<span class="hidden">주택채권</span>
			</h2>
			<aside id="aside" class="fl cf">
				<ul class="asideFaq">
					<li><a href="/project03/board/listArticles.do" tabindex="253" class="faqTitle showTooltip" title="FAQ">&nbsp;&nbsp;FAQ</a></li>
					<li><a href="/project03/sub03/sub03Login.jsp" tabindex="254" class="faqFirst showTooltip" title="기금대출">&nbsp;&nbsp;기금대출</a></li>
					<li><a href="/project03/main/index.jsp" tabindex="255" class=" showTooltip faqList" title="주택청약">&nbsp;&nbsp;주택청약</a></li>
					<li><a href="/project03/board/listArticles.do" tabindex="256" class="faqList showTooltip" title="주택채권">&nbsp;&nbsp;주택채권</a></li>
				</ul>	<!-- class="passBtn" -->
			</aside>
			<article id="contents" class="fl cf" >
				<h2><span class="hidden">기금대출</span></h2>
				<div id="high" class="fl cf">
				
					<ul class="path">
						<li class="pathColor showTooltip" title="기금대출">&nbsp;기금대출</li>
						<li>&nbsp;<a class="showTooltip" href="/project03/sub03/sub03Login.jsp" tabindex="257" title="FAQ">FAQ</a> ></li>
						<li>&nbsp;<a class="showTooltip" href="/project03/main/index.jsp" tabindex="258" title="FAQ">FAQ</a> ></li>
						<li><a class="showTooltip" href="/project03/board/listArticles.do" tabindex="259" title="주택도시기금">주택도시기금 ></a></li>
					</ul>
					<div class="fundLoan">기금대출</div>
				</div>	
				
				<div id="low" class="fl">   
					<div class="accordion">
						<input type="radio" id="faqRadioBox1" name="faqContent"/>
						<div class="qaTitle showTooltip topBorder" title="내집마련디딤돌대출 이율은 고정금리인가요? 아니면 변동금리인가요?"><label for="faqRadioBox1"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox2" name="faqContent"/>
						<div class="qaTitle showTooltip" title="내집마련디딤돌대출과 버팀목전세자금대출을 받을 수 있는 대출대상 주택 및 크기는?"><label for="faqRadioBox2"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"><br>
							</div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox3" name="faqContent"/>
						<div class="qaTitle showTooltip" title="전세보증금이 증액된 경우에도 버팀목전세자금대출을 받을 수 있는 지요?"><label for="faqRadioBox3"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox4" name="faqContent"/>
						<div class="qaTitle showTooltip" title="만 19세 이상인 세대주가 미성년자인 동생과 같이 주민등록에 등재된 경우 전세자금 대출대상자 해당 여부?"><label for="faqRadioBox4"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox5" name="faqContent"/>
						<div class="qaTitle showTooltip" title="버팀목전세자금대출의 대출신청시기와 금리조건은?"><label for="faqRadioBox5"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox6" name="faqContent"/>
						<div class="qaTitle showTooltip" title="노부모 부양세대주에 대한 우대이율 적용시 노부모 인정기준은?"><label for="faqRadioBox6"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox7" name="faqContent"/>
						<div class="qaTitle showTooltip" title="임차금액을 증액하여 임대차계약을 재약정하는 경우 버팀목전세자금대출을 얼마까지 받을 수 있는지요?"><label for="faqRadioBox7"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox8" name="faqContent"/>
						<div class="qaTitle showTooltip" title="주택도시기금대출의 무주택세대주 범위는?"><label for="faqRadioBox8"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox9" name="faqContent"/>
						<div class="qaTitle showTooltip" title="버팀목전세자금대출의 자격조건을 알고 싶습니다."><label for="faqRadioBox9"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox10" name="faqContent"/>
						<div class="qaTitle showTooltip" title="버팀목전세자금대출 기한연장시 제출서류는?"><label for="faqRadioBox10"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox11" name="faqContent"/>
						<div class="qaTitle showTooltip" title="임대주택 임차 또는 월세계약인 경우에도 대출을 받을 수 있는지요?"><label for="faqRadioBox11"></label>.</div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox12" name="faqContent"/>
						<div class="qaTitle showTooltip" title="연말 소득공제는 얼마까지 되는가요?"><label for="faqRadioBox12"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox13" name="faqContent"/>
						<div class="qaTitle showTooltip" title="재해주택복구자금의 대출조건은?"><label for="faqRadioBox13"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox14" name="faqContent"/>
						<div class="qaTitle showTooltip" title="전세금액 인상으로 재계약하는 경우 대출가능금액은?"><label for="faqRadioBox14"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox15" name="faqContent"/>
						<div class="qaTitle showTooltip" title="버팀목전세자금에서 분할상환이 가능합니까? 가능하다면 일부상환 후 이율은?"><label for="faqRadioBox15"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox16" name="faqContent"/>
						<div class="qaTitle showTooltip" title="수해로 인한 재해주택복구자금의 대출조건은?"><label for="faqRadioBox16"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox17" name="faqContent"/>
						<div class="qaTitle showTooltip" title="임차주택이 공동명의 소유인 경우 어떻게 하나요?"><label for="faqRadioBox17"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion">
						<input type="radio" id="faqRadioBox18" name="faqContent"/>
						<div class="qaTitle showTooltip" title="대출신청은 인근 영업점에서만 가능한가요?"><label for="faqRadioBox18"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>	
					<div class="accordion">
						<input type="radio" id="faqRadioBox19" name="faqContent"/>
						<div class="qaTitle showTooltip" title="주택도시기금대출 신청시 대출서류 접수 후 얼마나 기다려야 하나요?"><label for="faqRadioBox19"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
					<div class="accordion bottomBorder">
						<input type="radio" id="faqRadioBox20" name="faqContent"/>
						<div class="qaTitle showTooltip " title="기금대출을 상환기간 도래전에 상환하면 중도상환수수료를 부담하나요?"><label for="faqRadioBox20"></label></div>
						<div class="qaList">  <!-- 눌러서 나오게 할 부분 -->
							<div class="qaContent"></div>
						</div>
					</div>
				</div>
			</article>
		</div>
	</section>
	<%@ include file="../main/footerLogin.jsp" %>
</body>
</html>