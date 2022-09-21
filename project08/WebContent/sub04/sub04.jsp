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
	<section id="section" class="section">
		<div id="signup_content">
			<div id="join_box" class="join_box">
				<span class="signup_title">회원 가입</span>
				<form name="member_form" method="post" action="sub_mem_insert.php">

<script>
/* 중복 아이디 체크 상태 및 현재 입력한 아이디 변수 */
var check_id_var = false;
var current_check_id;
</script>
									
					<div class="form id">
						<div class="col1">아이디</div>
						<div class="col2">
							<label>
								<input autocomplete="off" maxlength="11" type="text" name="id">
								<div class="id_image info_image"></div>
							</label>
						</div>
						<div class="id_info_box">
							<div class='id_info signup_info'></div>
							<div class="id_check_text">아이디 확인중입니다.</div>
						</div>								
					</div>
					<div class="form password">
						<div class="col1">비밀번호</div>
						<div class="col2">
							<label>
								<input autocomplete="off" maxlength="15" type="password" name="pass">
								<div class="pass_image info_image"></div>
							</label>
						</div>
						<div class="password_info signup_info"></div>
					</div>
					<div class="form pass_confirm">
						<div class="col1">비밀번호 확인</div>
						<div class="col2">
							<label>
								<input autocomplete="off" maxlength="15" type="password" name="pass_confirm">
								<div class="pass_confirm_image info_image"></div>
							</label>
						</div>
						<div class="pass_confirm_info signup_info"></div>
					</div>
					<div class="form name">
						<div class="col1">이름</div>
						<div class="col2">
							<input autocomplete="off" maxlength="5" type="text" name="name">
						</div>
						<div class="name_info signup_info"></div>
					</div>
					<div class="form email">
						<div class="col1">이메일</div>
						<div class="col2 cf">
							<input autocomplete="off" maxlength="35" type="text" name="email" class="fl">
						</div>
						<div class="email_info signup_info"></div>
					</div>
					<div class="bottom_line"></div>
					<div class="buttons cf">
						<a class="reset_button fl" href="#" title="다시하기">다시하기</a>
						<a class="save_button fl" href="#" title="가입하기">가입하기</a>							
					</div>
				</form>
			</div> <!-- join_box -->
		</div> <!-- main_content -->
	</section>
	<%@ include file = "/footer.jsp" %>
</body>
</html>