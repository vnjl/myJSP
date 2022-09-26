<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
	<link rel="stylesheet" href="css/sub03.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="../js/jquery-1.7.1.min.js"></script>
	<script src="js/sub03.js"></script>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<section id="section">
		<div id="top">
			<div id="topText"><p>로그인</p></div>
		</div>
		
		<div id="infor">
			<img src="../images/information.png" alt="informationImg" class="fl"/>
			<div class="inforText">
				<ul>
					<li>&middot;신한은행은 보안강화 등을 이유로 보안카드번호(3개 이상 또는 전체)를 요구하지 않습니다.</li>
					<li>&middot;신한은행 홈페이지는 인터넷주소창이 녹색으로 표시되거나 보안자물쇠가 있습니다.</li>
					<li>&middot;수사기관 등 공공기관은 어떤 명목으로도 통장 비밀번호 등 금융정보를 묻거나 범죄에 연루되었다는 등의 이유로 돈을 요구하지 않습니다.</li>
				</ul>
			</div>
		</div>
		
		<div id="install">
			<p class="installText">
				키보드를 이용하여 입력하시려면 <a class="installLink" href="#" title="키보드보안 프로그램 설치">키보드보안 프로그램을 설치</a>하세요. <br/>
				미설치된 PC에서는 각종 비밀번호 등 주요정보를 마우스입력기(가상키보드)로만 입력할 수 있습니다. <br/>
				<span class="os">&#8251; 단, 윈도우 환경에서 이용 가능하며 맥, 리눅스, 모바일, 가상환경 등에서는 마우스입력기(가상키보드)로만 이용 가능합니다.</span>
			</p>
		</div>
		
		<div id="loginWrap">
			<div id="loginHead">
				<div id="HeadLeft" class="fl">
					<h4>공인인증서 로그인</h4>
					<div id="LeftButton">
						<a href="#" class="Button1">공인인증서 로그인</a>
						<a href="#" class="Button2">공인인증센터</a>
						<p>인증서는 인터넷상의 거래에 사용되는 가상의 신분증으로<br>가장 강력한 보안방법입니다.</p>
						<a href="#" class="Button3">인증서 등록</a>
						<a href="#" class="Button3">이용안내</a>
					</div>
				</div>
				<div id="HeadRight" class="fl">
					<h4>ID 로그인</h4>
					<div id="RightButton">
						<form action="sub03Fail.jsp" method="post">
							<div id="loginButton">
								<input type="text" class="guideText" name="userID" value="아이디"/>
								<input type="password" class="guideText" name="userPW" value="비밀번호"/>
							</div>
							<div>
								<input type="submit" id="login" value="로그인">
							</div>
						</form>
						<div id="find">
							<a href="../sub04/sub04.html" target="blank">아이디 찾기</a>
							<a href="../sub04/sub04.html" target="blank">비밀번호 찾기</a>
							<a href="../sub04/sub04.html" target="blank">회원 가입</a>
						</div>
					</div>					
				</div>
			</div>
		</div>
		
		<div id="note">
			<div class="safeGuide">
				<div class="safeGuideTitle cf">
					<div class="guideTitleImg fl"></div>
					<div class="guideTitleText fl">안전한 금융거래를 위한 <span>이용자 유의사항</span></div>
				</div>
				<div class="guideContents cf">
					<div class="guideCon1 guideCon fl">
						<div class="guideConImg"><img src="../images/power.PNG" alt=""/></div>
						<p class="guideConText">
							개인정보 보호를 위해 서비스<br/>
							이용 중 자리를 비우게 될 경우<br/>
							반드시 <span>로그아웃</span> 하세요.
						</p>
					</div>
					<div class="guideCon2 guideCon fl">
					<div class="guideConImg"><img src="../images/monitor.PNG" alt=""/></div>		
						<p class="guideConText">
							약 10분 동안 화면이동이 없는 경우<br/>
							고객님의 개인정보보호를 위해<br/>
							<span>자동 로그아웃</span> 처리됩니다.
						</p>					
					</div>
					<div class="guideCon3 guideCon fl">
						<div class="guideConImg"><img src="../images/pw.PNG" alt=""/></div>				
						<p class="guideConText">
							비밀번호 및 인증서 암호는 <span>주기적으<br/>
							로 변경관리</span>하시고 타인<br/>
							에게 노출되지 않도록 주의하세요.
						</p>	
					</div>
					<div class="guideCon4 guideCon fl">
					<div class="guideConImg"><img src="../images/lock.PNG" alt=""/></div>		
						<p class="guideConText">
							<span>비밀번호 5회 오류</span> 시 온라인<br/>
							서비스 <span>이용이 제한</span>되며 <span>비밀번호<br/>
							재설정</span> 후 이용이 가능합니다.
						</p>
					</div>
				</div>
			</div>
		</div>
		
		<div id="notice">
			<div class="userGuide cf">
				<div class="qanda cf fl">
					<a href="#" title="자주묻는질문" ><span class="userTitle qandaTitle fl">자주묻는질문</span></a>
					<ul class="qandaBoard cl">
						<li class="cf"><a class="fl" href="#" title="자주묻는질문1">개인뱅크 신규 가입했습니다.인증서 발급은 어떻게 하나요?</a></li>
						<li class="cf"><a class="fl" href="#" title="자주묻는질문2">타행에서 발급된 인증서가 있는경우 어떻게 해야하나요?</a></li>
						<li class="cf"><a class="fl" href="#" title="자주묻는질문3">통합프로그램 설치안내</a></li>
						<li class="cf lastQanda"><a class="fl" href="#" title="Q&A 게시글4">뱅킹 이용시 유의할 사항이 있나요?</a></li>
					</ul>
				</div>
				<div class="center fl cf">
					<span class="userTitle centerTitle fl">고객센터</span>
					<span class="centerDay fl">평일 09:00~18:00 (은행휴무일 제외)</span>
					<div class="centerImg fl cl"></div>
					<ul class="fl">
						<li class="centerLi cf"><span class="mainLocation fl">국내</span><span class="mainNum fl">1599-8000</span><span class="centerSubText marginEdit fl">, 1577-8000, 1544-8000</span></li>
						<li class="centerLi"><span class="centerSubText">해외에서 국내로 걸 때 82-2-3449-8000</span></li>
						<li class="centerLi"><span class="centerSubText">외국어 1577-8380</span></li>
						<li class="centerLi centerLastLi"><span class="centerSubText">해외에서 국내로 걸 때 82-2-3449-8380</span></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
<%@ include file = "/footer.jsp" %>
</body>
</html>