<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/main.css"/>
	<link rel="stylesheet" href="css/common.css"/>
	<link rel="icon" href="images/UwoFKxAc.ico"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/count.js"></script>
	<script src="js/weather.js"></script>
	<script src="js/popup.js"></script>
</head>
<body onLoad="ddaycount()">
	<span class="quickToggle"><span class="indent">퀵메뉴닫기</span></span>
	<div class="quickmenu">
		<h3 class="quickhead"><a href="/project08/sub03/sub03.jsp"><img src="images/quick_head.png" alt="Quickmenu"/></a></h3>
		<ul class="quickIcon">
			<li class="quick01"><a href="/project08/sub01/sub01.jsp"><img src="images/" alt=""/></a></li>
		</ul>
		<ul class="quickBt">
			<li><a href="/project08/sub02/sub02.jsp"><img src="images/login_btn.png" alt="login"/></a></li>
			<li><a href="/project08/sub03/sub03.jsp"><img src="images/join_btn.png" alt="join"/></a></li>
			<li><a href="/project08/sub01/sub01.jsp"><img src="images/admin2_btn.png" alt="admin"/></a></li>
		</ul>
	</div>
<%@ include file = "/popup.jsp" %>
<%@ include file = "/header.jsp" %>
	<!------------------------------- section ------------------------------------->
	<section id="section">
		<div class="mainSilde">
			<div class="mainSlideBg">
				<div class="slideControlOuter">
					<div class="controlPanel cf">
						<div class="controlBtns fl cf">
							<div class="controlButton activeBtn controlButtonFirst fl"></div>
							<div class="controlButton fl"></div>
							<div class="controlButton fl"></div>
							<div class="controlButton fl"></div>
						</div>
					</div>
				</div>
				<div class="sliderTextPanel">
					<div class="sliderText sliderTextFirst">
						<p>Fun# 오픈 선물<br>
						   퀴즈풀고 신한머니 받고!</p>
						<a href="#" class="slideTextAnchor slideTextAnchor1" title="자세히보기">자세히보기</a>
					</div>
					<div class="sliderText">
						<p>기다렸던 휴가 <br/>
						소중한 사람과 함께!</p>
						<a href="#" class="slideTextAnchor slideTextAnchor2" title="자세히보기">자세히보기</a>								
					</div>
					<div class="sliderText">
						<p>아이부자 추천 하면<br>
						나랑 너랑 Eat템 득템!</p>
						<a href="#" class="slideTextAnchor slideTextAnchor3" title="자세히보기">자세히보기</a>								
					</div>
					<div class="sliderText">
						<p>당신의 버킷리스트, <br>
						신한이 이루어 드림</p>
						<a href="#" class="slideTextAnchor slideTextAnchor4" title="자세히보기">자세히보기</a>								
					</div>
					<div class="sliderText">
						<p>국민연금 받으면<br>
						   보이스피싱 보험이 무료!</p>
						<a href="#" class="slideTextAnchor slideTextAnchor5" title="자세히보기">자세히보기</a>								
					</div>
				</div>						
				<div class="slideOuter">
					<div class="slidePanel cf">
						<div class="slidePanelInner slidePanelInnerFirst">
							<div class="slideImgLi fl cf">
								<div class="slideLeftLine slideLeftLine1 fl"></div>
								<div class="slideRightLine slideRightLine1 fl"></div>
								<img src="images/banner1.png" class="sliderImage" alt="슬라이드 광고 이미지1"/>
								<div class="textBanner"></div>
							</div>
						</div>
						<div class="slidePanelInner">
							<div class="slideImgLi fl">
								<div class="slideLeftLine slideLeftLine2 fl"></div>
								<div class="slideRightLine slideRightLine2 fl"></div>		
								<img src="images/banner2.png" class="sliderImage" alt="슬라이드 광고 이미지2"/>		
							</div>
						</div>
						<div class="slidePanelInner">
							<div class="slideImgLi fl">
								<div class="slideLeftLine slideLeftLine3 fl"></div>
								<div class="slideRightLine slideRightLine3 fl"></div>	
								<img src="images/banner3.png" class="sliderImage" alt="슬라이드 광고 이미지3"/>		
							</div>
						</div>
						<div class="slidePanelInner">
							<div class="slideImgLi fl">
								<div class="slideLeftLine slideLeftLine4 fl"></div>
								<div class="slideRightLine slideRightLine4 fl"></div>	
								<img src="images/banner4.png" class="sliderImage" alt="슬라이드 광고 이미지4"/>		
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="btn">
			<div class="login"><a href="/project08/sub03/sub03.jsp" title="로그인"><img src="images/loginBtn.PNG" alt="login"/></a></div>
			<div class="cert"><a href="/project08/sub03/sub03.jsp" title="인증센터"><img src="images/cert.PNG" alt="login"/></a></div>
		</div>
		</div> <!-- id="top" -->
		
		<div id="service">
			<div id="mainService" class="fl">
			<div class="add fr"><a href="/project08/sub03/sub03.jsp">더보기</a></div>
				<div class="service"><a href="/project08/sub01/sub01.jsp">주요서비스</a></div>
				<ul>
					<li><a href="/project08/sub03/sub03.jsp" title="전계좌조회" class="fl"><img src="images/inquiry.PNG" alt="inquiry"/></a></li>
					<li><a href="/project08/sub02/sub02.jsp" title="계좌이체" class="fl"><img src="images/transfer.PNG" alt="transfer"/></a></li>
					<li><a href="/project08/sub03/sub03.jsp" title="간편조회서비스" class="fl"><img src="images/simple.PNG" alt="simple"/></a></li>
					<li><a href="/project08/sub01/sub01.jsp" title="지로납부" class="fl"><img src="images/giro.PNG" alt="giro"/></a></li>
				</ul>
					<div class="serviceText fl">
						<ul>
							<li class="in fl">전계좌조회</li>
							<li class="tr fl">계좌이체</li>
							<li class="si fl">간편조회서비스</li>
							<li class="gi fl">지로납부</li>
						</ul>
					</div>
			</div> <!-- id="mainService" -->
			<div id="bankingProduct" class="fl">
				<div class="issued fl"><a href="/project08/sub03/sub03.jsp">인증서 발급/재발급</a></div>
				<div class="otherLine"><a href="/project08/sub02/sub02.jsp">타행/타기관 인증서 등록</a></div>
				<div class="product">금융상품</div>
				<div class="productOutBox fl">
					<div class="productTable">
						<a href="/project08/sub03/sub03.jsp" title="예금/신탁" class="productTableCell1 fl cf">예금/신탁</a>
						<a href="/project08/sub01/sub01.jsp" title="펀드" class="productTableCell2 fl cf">펀드</a>
						<a href="/project08/sub02/sub02.jsp" title="대출" class="productTableCell3 fl cf">대출</a>
						<a href="/project08/sub03/sub03.jsp" title="외환" class="productTableCell4 fl cf">외환</a>
						<a href="/project08/sub01/sub01.jsp" title="골드/실버" class="productTableCell5 fl cf">골드/실버</a>
						<a href="/project08/sub03/sub03.jsp" title="퇴직연금" class="productTableCell6 fl cf">퇴직연금</a>
					</div>
				</div>
			</div> <!-- id="bankingProduct" -->
		</div> <!-- id="/project08/service" -->
		
		<div id="event">
			<article id="mainEvent" class="fl">
				<ul class="event cf">
					<li class="active"><a href="/project08/sub02/sub02.jsp" tabindex="1">공지사항</a></li>
					<li class="TabBtn"><a href="/project08/sub01/sub01.jsp" tabindex="1">예금/적금</a></li>
					<li class="TabBtn"><a href="/project08/sub03/sub03.jsp" tabindex="1">이벤트</a></li>
				</ul>
				<div class="tabCon">
					<div class="noticeTab">
						<ul>
							<li><a href="/project08/sub02/sub02.jsp" tabindex="1">(1)방카슈라스 업무 일시중지 안내</a></li>
							<li><a href="/project08/sub02/sub02.jsp" tabindex="1">(2)코로나 19 관련 일부 영업점 중단 안내</a></li>
							<li><a href="/project08/sub03/sub03.jsp" tabindex="1">(3)기관 별 업무 일시중단 안내</a></li>
							<li><a href="/project08/sub03/sub03.jsp" tabindex="1">(4)긴급전산점검 업무 일시중단 안내</a></li>
						</ul>
					</div>
					<div class="depositsTab">
						<div id="recommendProduct" class="fl">
							<div class="recommenBox">
								<div class="loan">
									<ul>
										<li><a href="/project08/sub01/sub01.jsp" class="fl"><span class="box">대출</span></a></li>
										<li><a href="/project08/sub02/sub02.jsp">365일 언제 어디서나!</a></li>
										<li><a href="/project08/sub03/sub03.jsp">쏠편한 직장인대출S</a></li>
									</ul>
								</div>
								<div class="deposit">
									<ul>
										<li><a href="/project08/sub01/sub01.jsp" class="fl"><span class="box">예금</span></a></li>
										<li><a href="/project08/sub02/sub02.jsp">간단하고 쉬운 우대금리!</a></li>
										<li><a href="/project08/sub03/sub03.jsp">신한 안녕,반가워 적금</a></li>
									</ul>
								</div>
							</div>
						</div> <!-- id="recommendProduct" -->
					</div>
					<div class="eventTab">
						<ul>
							<li><a href="/project08/sub01/sub01.jsp" tabindex="1"><img src="images/ib_banner02.png" alt="eventBanner"/></a></li>
						</ul>
					</div>
				</div>
			</article> <!-- id="mainEvent" -->
			<div id="weather_content_box" class="fr cf">			
				<div class="weather_content cf">
					<div class="today_weather weather_box fl">
						<span class="today_title">오늘의 날씨</span>
						<div class="black_alpha">
							<div class="weather_icon_bg cf">
								<span class="today_temp_text fl">12.75&#8451;</span>
							</div>
							<div class="weather_text_box cf">
								<p class="today_date_text">9월 17일 22시 25분</p>
								<span class="today_min_temp_text fl">최저 9.42&#8451; </span>
								<span class="today_max_temp_text fl">최고 14.69&#8451; </span>
								<span class="today_feel_temp_text fl cl">체감 12.21&#8451; </span>
								<span class="today_humidity_text fl">습도 72%</span>
							</div>
						</div>
					</div>
					<div class="forecast_weather weather_box fl">
						<span class="forecast_title">내일의 날씨</span>
						<div class="black_alpha">
							<div class="weather_icon_bg">
								<span class="forecast_temp_text">9.52&#8451;</span>
							</div>	
							<div class="weather_text_box cf">
								<p class="forecast_date_text">9월 18일 21시 기준</p>
								<span class="forecast_min_temp_text fl">최저 9.52&#8451; </span>
								<span class="forecast_max_temp_text fl">최고 9.52&#8451; </span>
								<span class="forecast_feel_temp_text fl cl">체감 9.23&#8451; </span>
								<span class="forecast_humidity_text fl">습도 73%</span>
							</div>		
						</div>								
					</div>
				</div>
			</div>
		</div>			

		<div id="notice">
			<div id="leftNotice" class="fl">
				<div class="border"></div>
				<ul>
					<li><span class="/project08/spanNotice">공지사항</span></li>
					<li><a href="/project08/sub02/sub02.jsp">&middot;신한금융투자 금융공동망 업무 일시중단 안내</a></li>
					<li><a href="/project08/sub03/sub03.jsp">&middot;SC제일은행 금융공동망 업무 일시중단 안내</a></li>
					<li><a href="/project08/sub01/sub01.jsp">&middot;유진금융투자 금융공동망 업무 일시중단 안내</a></li>
				</ul>
			</div> <!-- id="leftNotice" -->
			<div id="centerNotice" class="fl">
				<div class="border"></div>
				<ul>
					<li><span class="/project08/spanNotice">인터넷뱅킹 FAQ</span></li>
					<li><a href="/project08/sub02/sub02.jsp">&middot;브라우저 인증서 사용고객 안내</a></li>
					<li><a href="/project08/sub03/sub03.jsp">&middot;통합프로그램 설치 안내</a></li>
					<li><a href="/project08/sub01/sub01.jsp">&middot;스마트OTP 설치 안내</a></li>
				</ul>
			</div> <!-- id="centerNotice" -->
			<div id="rightNotice" class="fl">
				<div class="border"></div>
				<ul>
					<li><span class="/project08/spanNotice">뱅킹보안안내</span></li>
					<li><a href="/project08/sub02/sub02.jsp">&middot;전자금융사기 피해예방 안내</a></li>
					<li><a href="/project08/sub03/sub03.jsp">&middot;금융사기 대처방법</a></li>
					<li><a href="/project08/sub02/sub02.jsp">&middot;전자금융거래이용자10계명</a></li>
				</ul>
			</div> <!-- id="rightNotice" -->
		</div> <!-- id="notice" -->
		
		<div id="time">
			<div id="listWrap">
				<div class="time fl">
					<ul class="list5 fl">
						<li><a href="/project08/sub01/sub01.jsp">&middot;이용시간안내</a></li>
						<li><a href="/project08/sub03/sub03.jsp">&middot;수수료안내</a></li>
						<li><a href="/project08/sub02/sub02.jsp">&middot;뱅킹이용약관</a></li>
					</ul>
					<ul class="list6 fl">
						<li><a href="/project08/sub01/sub01.jsp">&middot;금리안내</a></li>
						<li><a href="/project08/sub03/sub03.jsp">&middot;금융계산기</a></li>
					</ul>
				</div>
			</div> <!-- id="listWrap" -->
			<div id="telNum" class="fl">
				<img src="images/people.png" alt="people"/>
				<p><span class="/project08/serviceCenter">고객센터</span> 평일09시-18시(은행공동휴일 제외)<br/><span class="bold">국내</span><span class="num">1599-8000,</span> <span class="bold">1577-8000, 1544-8000</span> (해외에서 국내로 걸 때) 82-2-3449-8000<br/><span class="bold">외국어</span> 1577-8380 (해외에서 국내로 걸 때)82-2-3449-8380</p>
			</div> <!-- id="telNum" -->
		</div> <!-- id="item" -->
	</section>
	<!-------------------------------------- footer -------------------------------->
<%@ include file = "/footer.jsp" %>
</body>
</html>






















