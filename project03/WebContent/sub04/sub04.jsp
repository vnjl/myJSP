<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<link rel="stylesheet" href="css/signup.css"/>
	<link rel="stylesheet" href="../css/common.css"/>
	<script src="../js/jquery-1.7.1.min.js"></script>
	<script src="js/signup.js"></script>
</script>
<script>
function fn_sendMember(){
   // 자바스크립트에서 <form> 태그의 name으로 접근해 입력한 값들을 얻는다
   var frmMember=document.frmMember;
   var id=frmMember.id.value;
   var pwd=frmMember.pwd.value;
   var name=frmMember.name.value;
   var email=frmMember.email.value;
   if(id.length==0 ||id==""){
      alert("아이디는 필수입니다.");
   }else if(pwd.length==0 ||pwd==""){
      alert("비밀번호는 필수입니다.");
   }else if(name.length==0 ||name==""){
      alert("이름은 필수입니다.");
   }else if(email.length==0 ||email==""){
      alert("이메일은 필수입니다.");
   }else{
      // 전송 방법을 post로 지정
      frmMember.method="post";
      // 서블릿 매핑 이름을 member3으로 지정
      frmMember.action="member";
      // 서블릿으로 전송
      frmMember.submit();
   } 
}
</script>
</head>
<body>
 <%@ include file = "/header.jsp" %>
	<!------------------------------- section ------------------------------------->
	<section id="section">
		<div id="signUpWrap">
			<div id="title">회원가입</div>
			<form name="fn_sendMember" method="post"  action="">
				<div class="form">
					<div class="id">아이디</div>
					<div class="idText">
						<label>
							<input autocomplete="off" maxlength="11" type="text" name="id">
						</label>
					</div>		
					<div id="idCheckBox">
						<div class="idCheck">아이디는 5~11자의 영문 소문자와 숫자만 사용 가능합니다.</div>
					</div>
				
					<div class="password">비밀번호</div>
					<div class="passwordText">
						<label>
							<input autocomplete="off" maxlength="15" type="password" name="pass">
						</label>
					</div>		
					<div id="passwordCheckBox">
						<div class="passwordCheck">비밀번호는 8~15자의 영문 소문자와 숫자를 조합하여야 사용 가능합니다.</div>
					</div>
					
					<div class="passwordConfirm">비밀번호 확인</div>
					<div class="passwordConfirmText">
						<label>
							<input autocomplete="off" maxlength="15" type="password" name="passConfirm">
						</label>
					</div>		
					<div id="passwordConfirmCheckBox">
						<div class="passwordConfirmCheck">비밀번호를 다시 한번 입력해 주세요.</div>
					</div>
				</div>
				<div class="buttons cf">
					<a class="resetButton fl" href="#" title="다시하기">다시하기</a>
					<a class="saveButton fl" href="../sub03/sub03.html" title="가입하기" onclick="fn_sendMember()">가입하기</a>				
				</div>
				<input  type="hidden" name="command" value="addMember"/>
			</form>
		</div>
	</section>
	<%@ include file = "/footer.jsp" %>
</body>
</html>