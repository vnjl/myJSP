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
      frmMember.action="/project08/member";
      // 서블릿으로 전송
      frmMember.submit();
   } 
}
</script>
</head>
<body>
 <%@ include file = "../header.jsp" %>
	<!------------------------------- section ------------------------------------->
	<section id="section" class="section">
		<div id="sign">
			<form name="frmMember" method="post" action="/project08/sub03/sub03.jsp">
			<p class="sign">회원가입</p>
				<div id="id">
					<p>아이디</p>
					<input type="text" name="id">
				</div>
				<div id="pwd">
					<p>비밀번호</p>
					<input type="password" name="pwd">
				</div>
				<div id="name">
					<p>이름</p>
					<input type="text" name="name">
				</div>
				<div id="email">
					<p>이메일</p>
					<input type="text" name="email">
				</div>
				
				<input class="btn1" type="button" value="가입하기" onclick="fn_sendMember()" >
				<input type="reset" class="btn2" value="다시입력">
			</form>
		</div>
	</section>
<!-- ------------------------------------------------------ -->
	<%@ include file = "../footer.jsp" %>
</body>
</html>