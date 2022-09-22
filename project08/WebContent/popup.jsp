<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>popup</title>
	<link rel="stylesheet" href="css/popup.css"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="js/count.js"></script>
</head>
<body>
	<div class="pop">
		<div class="popupInner">
			<p class="popTitle">공&nbsp;&nbsp;&nbsp;지</p>
			<div class="countWrap">
				<div id="popContent">
					<p><span>IT 서버 점검 및 업데이트로 인한<br/>일시적 IT 서비스 중단 안내</span><br/> 온라인 IT 서비스 개선을 위한, IT 서버 점검 및 업데이트 작업으로 인하여 웹사이트, 모바일을 포함해 모든 IT 서비스 이용을 일시적으로 제한할 예정입니다.<br/>더 나은 IT 환경을 구축하여 제공해드리기 위해 최선을 다하겠습니다.</p>
				</div>
				<div id="timer">
					<ul class="cf">
						<li id="day" class="firstD fl">
							<img src="images/num0.png" id="day100" alt="day"/>
							<img src="images/num0.png" id="day10" alt="day"/>
							<img src="images/num0.png" id="day1" alt="day"/>
						</li>
						<li class="fl"><img src="images/day_bg3.png" alt=""/></li>
						<li id="hour" class="fl">
							<img src="images/num0.png" id="hour10" alt="hour"/>
							<img src="images/num0.png" id="hour1" alt="hour"/>
						</li>
						<li class="fl"><img src="images/day_bg3.png" alt=""/></li>
						<li id="min" class="fl">
							<img src="images/num0.png" id="min10" alt="min"/>
							<img src="images/num0.png" id="min1" alt="min"/>
						</li>
						<li class="fl"><img src="images/day_bg3.png" alt=""/></li>
						<li id="/project08/sec" class="fl">
							<img src="images/num0.png" id="/project08/sec10" alt="/project08/sec"/>
							<img src="images/num0.png" id="/project08/sec1" alt="/project08/sec"/>
						</li>
					</ul>
				</div>
			</div>
			<span class="client"><a href="/project08/sub02/sub02.html">고객센터 바로가기</a></span>
			<button class="close">닫기</button>
		</div>
	</div>
	</div>
</body>
</html>