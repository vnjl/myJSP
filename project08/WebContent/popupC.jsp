<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>popup</title>
	<link rel="stylesheet" href="css/popup.css"/>
	<script src="js/jquery-1.7.1.min.js"></script>
	<script src="/project08/js/count.js"></script>
		<script>
			//로그인 카운트다운
		var tid;
		var cnt = parseInt(5);//초기값(초단위)
		function counter_init() {
			tid = setInterval("counter_run()", 1000);
		}

		function counter_reset() {
			clearInterval(tid);
			cnt = parseInt(60);
			counter_init();
		}

		function counter_run() {
			document.getElementById("counter").innerText = time_format(cnt);
			cnt--;
			if(cnt < 0) {
				clearInterval(tid);
				self.location = "/project08/sub04/sub04.jsp"; //로그인 경로 넣기
			}
		}
		function time_format(s) {
			var nHour=0;
			var nMin=0;
			var nSec=0;
			if(s>0) {
				nMin = parseInt(s/60);
				nSec = s%60;

				if(nMin>60) {
					nHour = parseInt(nMin/60);
					nMin = nMin%60;
				}
			} 
			if(nSec<10) nSec = "0"+nSec;
			if(nMin<10) nMin = "0"+nMin;

			return ""+nHour+":"+nMin+":"+nSec;
		}	


	</script>
	<script>
counter_init();
</script>
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
						<div class="timeControl">	
							<span id="counter"></span>
							<span>후 자동으로 <br/>로그인페이지로 이동합니다.</span>
							<input class="timeBtn" type="button" value="연장" onclick="counter_reset()">	
						</div>
				</div>
			</div>
			<span class="client"><a href="/project08/sub02/sub02.html">고객센터 바로가기</a></span>
			<button class="close">닫기</button>
		</div>
	</div>
	</div>
</body>
</html>