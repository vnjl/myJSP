<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/sub01.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="../js/jquery-1.7.1.min.js"></script>
	<script src="js/sub01.js"></script>
</head>
<body>
<%@ include file = "/header.jsp" %>
<!-- --------------------------------------------- -->
	<section id="section">
		<div id="way">
			<div id="wayText">
				<ul>
					<li>
						<p>고객센터 <img src="../images/sign.png" alt=""/> 고객상담 <img src="../images/sign.png" alt=""/> 자주하는질문 <img src="../images/sign.png" alt=""/> <img src="../images/menu_3.png" alt="menuWay"/> <a href="#">인터넷뱅킹qna</a>
					</li>
				</ul>
			</div> <!-- id="wayTexy" -->
		</div> <!-- id="way" -->
		<div id="top">
			<p>인터넷뱅킹qna</p>
			<div id="searchBox">
				<p class="searchText fl">질문을 입력하세요</p>
				<input type="text" name="text" class="searchInput"/>
				<button type="submit" class="btn">검색</button>
			</div>
		</div> <!-- id="top" -->
		<div id="tabMenu">
			<ul class="categoryList cf">
				<li class="active"><a href="#"><span class="white">Top 10</span></a></li>
				<li><a href="#">개인 인터넷 뱅킹</a></li>
				<li><a href="#">인증서</a></li>
				<li><a href="#">홈페이지</a></li>
				<li><a href="#">스마트뱅킹</a></li>
			</ul>
		</div> <!-- id="tabMenu" -->
				
		<div id="board">
			<div class="first fl cf">
				<div class="number fl"><span>No.</span></div>
				<div class="title fl"><span>제목</span></div>
			</div>
			<ul class="QnA cf">
 				<li class="cb">
					<p class="titleNum fl">1</p>
					<div class="titleText">
						보안프로그램(ASTx, CrossWebEx,TouchEnNxKey)이 설치되어 있어도 팝업이 반복 출력되는 경우
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>보안프로그램(ASTx, CrossWebEx,TouchEnNxKey)이 설치되어 있어도 팝업이 반복 출력되는 경우</span><br/><span class="bold">A.</span>보안프로그램 설치 후 계속해서 설치 팝업이 실행되어 보여지는 경우에도 실행되고 있는 모든 브라우저 종료 후 제어판 실행 '프로그램/제거'를 선택합니다.</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">2</p>
					<div class="titleText">
						개인인터넷뱅킹 로그인시 공인인증서 팝업창이 뜨지 않는 경우
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>개인인터넷뱅킹 로그인시 공인인증서 팝업창이 뜨지 않는 경우</span><br/><span class="bold">A.</span>1.쿠키삭제(즐겨찾기 웹 사이트 데이타보존 체크박스 빼시고 브라우저를 모두 닫고 삭제) <br/>2.인터넷 뱅킹 초기화하면 접속해서 ctrl+F5(컨트롤키 누른 상태에서F5키 두세번 클릭)로 새로 고침 <br/>3.기존 모든 브라우저를 닫고 새로운 브라우저를 열어서 인터넷뱅킹 거래 진행<br/>PC에 있는 캐싱된 파일을 깔끔하게 새로고침하려면 F5로 하시면 안되고 반드시 crtl를 누른 상태에서 F5를 실행하셔야 합ㄴ다.</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">3</p>
					<div class="titleText">
						[인터넷뱅킹]가정과 직장에서 모두 인터넷뱅킹을 이용하는 방법은?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>가정과 직장에서 모두 인터넷뱅킹을 이용하는 방법은?</span><br/><span class="bold">A.</span>금융인증서를 이용해 로그인하시거나 공동인증서를 복사하여 가정과 직장에서 모두 이용하실 수 있습니다.<br/>매체별 공동인증서 복사 방법 안내드리겠습니다.<br/>1.인증센터 &gt; 공동인증서(구 공동인증서) &gt; 인증서관리 &gt; 인증서복사<br/>2.(팝업된 인증서관리 창에서)복사할 인증서 선택 <br/>3.(하단)인증서복사<br/>4.(인증서 저장위치)이동식디스크 선택<br/>5.인증서 암호입력&gt;확인</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">4</p>
					<div class="titleText">
						[인터넷뱅킹]인터넷뱅킹에 필요한 암호화 프로그램의 설치확인 및 재설치 방법은?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>인터넷뱅킹에 필요한 암호화 프로그램의 설치확인 및 재설치 방법은?</span><br/><span class="bold">A.</span>INISAFE Web프로그램은 인터넷뱅킹 서비스를 이용하기 위한 필수 보안 프로그램입니다. 이 파일은 인터넷뱅킹 페이지에 접속하실 때 사용자 PC로 자동으로 다운로드 되지만, PC환경에 따라 자동으로 다운로드 되지 않는 경우도 있습니다. 이런 경우에는 수동으로 다운로드 받아 설치하시면 됩니다. 수동으로 다운로드 받으시려면 아래 다운로드 버튼을 클릭하셔서 파일 다운로드 후 설치를 부탁드립니다.</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">5</p>
					<div class="titleText">
						[인터넷뱅킹]인터넷 이체한도 변경 가능한가요?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>인터넷 이체한도 변경 가능한가요?</span><br/><span class="bold">A.</span>1.쿠키삭제(즐겨찾기 웹 사이트 데이타보존 체크박스 빼시고 브라우저를 모두 닫고 삭제) <br/>2.인터넷 뱅킹 초기화하면 접속해서 ctrl+F5(컨트롤키 누른 상태에서F5키 두세번 클릭)로 새로 고침 <br/>3.기존 모든 브라우저를 닫고 새로운 브라우저를 열어서 인터넷뱅킹 거래 진행</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">6</p>
					<div class="titleText">
						[인터넷뱅킹]개인정보 변경은 어디서 해야 하나요?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>개인정보 변경은 어디서 해야 하나요?</span><br/><span class="bold">A.</span>인터넷뱅킹에 로그인 하신 후 "사용자관리"를 클릭하신 후  "고객정보"&gt;"고객정보조회/변경"에서 개인정보를 변경하실 수 있습니다. </p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">7</p>
					<div class="titleText">
						[인터넷뱅킹]타행 이체수수료를 면제받으려면?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>타행 이체수수료를 면제받으려면?</span><br/><span class="bold">A.</span>신한은행 우수고객 분들을 대상으로 Tops Club 제도를 운영중에 있으며, Tops Club 고객으로 선정된 고객님께서는 수수료 면제 및 감면 등 다양한 혜택을 드리고 있습니다.</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">8</p>
					<div class="titleText">
						[인증서]공동인증서와 금융인증서의 차이점은 무엇인가요?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>공동인증서와 금융인증서의 차이점은 무엇인가요?</span><br/><span class="bold">A.</span>공동인증서(구 공인인증서)<br/>용도에 따라 은행/신용카드/보험용 무료 인증서와 전자거래범용(수수료 4,400원) 인증서가 있으며 유효기간은 1년입니다.<br/> 공동인증서는 하드디스크나 이동식디스크, 휴대폰 등 기기에 저장해서 이용할 수 있습니다.<br/> 인증서를 저장한 매체에서는 인증서 비밀번호로 편리하게 이용하실 수 있으나 다른기기에서 이용하려면 기기마다 복사하거나 이동식디스크에 저장해서 휴대해야하는 불편함이 있을 수 있습니다.</p>
					</div>
				</li>		
				<li class="cb">
					<p class="titleNum fl">9</p>
					<div class="titleText">
						[인터넷뱅킹]12개월 장기미이체로 이체서비스가 중단된 경우 어떻게 해제하나요?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>12개월 장기미이체로 이체서비스가 중단된 경우 어떻게 해제하나요?</span><br/><span class="bold">A.</span>최근 12개월동안 인터넷뱅킹/폰뱅킹/모바일뱅킹에서 이체서비스를 이용하지 않은 고객님의 금융자산 보호를 위하여 이체서비스가 중단됩니다.<br/>다시 이체를 원하시는 경우에는 인터넷뱅킹/폰뱅킹/신한쏠(SOL)에서 이체정지를 해제하실 수 있습니다.(단, 인터넷뱅킹 출금계좌가 등록되어 있는 경우)</p>
					</div>
				</li>		
				<li class="last cb">
					<p class="titleNum fl">10</p>
					<div class="titleText">
						[홈페이지]아이디/비밀번호가 생각나지 않습니다. 어떻게 해야 하나요?
					</div>
					<div class="text">
						<p><span class="title"><span class="bold">Q.</span>아이디/비밀번호가 생각나지 않습니다. 어떻게 해야 하나요?</span><br/><span class="bold">A.</span>홈페이지 상단에 있는 [고객센터]&gt;회원서비스 메뉴에서 아이디 찾기, 비밀번호 재설정하여 이용하시기 바랍니다.</p>
					</div>
				</li>		
			</ul>
		</div>
		
 		<div id="notice" class="cf">
			<div id="leftNotice">
				<ul class="fl">
					<li><span class="bold">고객센터</span></li>
					<li>평일 09:00~18:00(은행 휴무일 제외)</li>
					<li class="fl"><span class="blue">개인</span></li>
					<li>1599-8000/1577-8000/1544-8000<br/>해외에서 국내로 걸 때 82-2-3449-8000</li>
				</ul>
			</div>
			<div id="centerNotice">
				<ul class="fl">
					<li class="fl"><span class="blue">기업</span></li>
					<li>1599-8008/1577-8008/1544-8008<br/>해외에서 국내로 걸 때 82-2-3449-8008</li>
				</ul>
			</div>
			<div id="rightNotice">
				<ul class="fl">
					<li><span class="bold">소비자보호센터</span></li>
					<li>평일 09:00~18:00(은행 휴무일 제외)</li>
					<li class="fl"><img src="../images/call.png" alt="call"/></li>
					<li class="fl"><span class="blue">불편/애로사항 접수전화</span></li>
					<li><span class="bold">080/023/0182</span></li>
				</ul>
			</div>
		</div>
	</section>
<!-- --------------------------------------------- -->
<%@ include file = "/footer.jsp" %>
</body>
</html>