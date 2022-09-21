$(function(){
	if(check_id_var=='true') {
		$('.form.id>.col2 input').val(current_check_id);
		$('.form.id>.col2 input').attr('readonly', true);
		$('.form.id>.col2 input').css('background-color', '#cccccc');
		document.member_form.pass.focus();
	}else{
		document.member_form.id.focus();
	}

	function check_input()
	{	
		if (!document.member_form.id.value.trim()){
			$('.id_info').text('아이디를 먼저 입력해주세요.');
			document.member_form.id.focus();
			return;
		}
		if (!document.member_form.pass.value.trim()){
			$('.password_info').text('?꾩닔 ?뺣낫?낅땲??.'); 
			document.member_form.pass.focus();
			return;
		}
		
		var pass_reg_exp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
		if(!pass_reg_exp.test(document.member_form.pass.value)){
			$('.password_info').text('4~15자 사이로 영어와 숫자를 조합하여 주세요.'); 
			document.member_form.pass.focus();
			return;
		} 
		if (!document.member_form.pass_confirm.value.trim()){
			$('.pass_confirm_info').text('?꾩닔 ?뺣낫?낅땲??.');
			document.member_form.pass_confirm.focus();
			return;
		}
		if (!document.member_form.name.value.trim()){
			$('.name_info').text('?꾩닔 ?뺣낫?낅땲??.');
			document.member_form.name.focus();
			return;
		}
		if (!document.member_form.email.value.trim()){
			$('.email_info').text('?꾩닔 ?뺣낫?낅땲??.');
			document.member_form.email.focus();
			return;
		}
		
		var email_reg_exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		if(!email_reg_exp.test(document.member_form.email.value)){
			$('.email_info').text('?대찓?? 二쇱냼瑜? ?ㅼ떆 ?뺤씤?댁＜?몄슂.');
			document.member_form.email.focus();
			return;
		}
		if (document.member_form.pass.value.trim() != document.member_form.pass_confirm.value.trim())
		{
			$('.pass_confirm_info').text('鍮꾨?踰덊샇媛? ?쇱튂?섏? ?딆뒿?덈떎.');
			document.member_form.pass_confirm.focus();
			return;
		}
		$('*').css('cursor','wait');
		document.member_form.submit();
	}

	function reset_form(){
		window.location.href='sub_signup.php'
		return;
	}

	function check_id(){
		window.location.href='sub_signup.php?id=' + document.member_form.id.value
		// window.open("sub_check_id.php?id=" + document.member_form.id.value,
		// 	"IDcheck",
		// 	"left=700, top=300, width=350, height=200, scrollbars=no, resizable=yes");
	}	

	
	$('.form>.col2 input').not('.form.id>.col2 input').focus(function(){
		if(check_id_var!='true'){
			if(!document.member_form.id.value.trim()){
				$('.id_info').text('癒쇱? ?꾩씠?? ?낅젰?? ?꾩슂?⑸땲??.');
			}
			document.member_form.id.focus();
		}
	});

	$('.form>.col2 input').not('.form.id>.col2 input').blur(function(){
		if(check_id_var=='true'){
			if(!this.value.trim()){
				$(this).parents('.form').find('.signup_info').text('?꾩닔 ?뺣낫?낅땲??.');
				if($(this).parents('.form').hasClass('password')){ 	
					return;
				}
				if($(this).parents('.form').hasClass('pass_confirm')){
					return;
				}				
			}else if (this.value.trim()){
				if ($(this).parents('.form').hasClass('pass_confirm')){
					if(document.member_form.pass.value.trim() != document.member_form.pass_confirm.value.trim()){
						$('.pass_confirm_info').text('鍮꾨?踰덊샇媛? ?쇱튂?섏? ?딆뒿?덈떎.');
					} else if(document.member_form.pass.value.trim() == document.member_form.pass_confirm.value.trim()){
						$('.pass_confirm_info').text('');
					}else{
						$('.pass_confirm_info').text('');
					}
					return;
				}
				if($(this).parents('.form').hasClass('password')){
					
					var pass_reg_exp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
					if(!pass_reg_exp.test(document.member_form.pass.value)){
						$(this).parents('.form').find('.signup_info').text('4~15?? ?곷Ц, ?レ옄瑜? 議고빀?섏꽭??.'); 
					} else{
						$(this).parents('.form').find('.signup_info').text(''); 
						return;
					}
				}
				if($(this).parents('.form').hasClass('email')){
					
					var email_reg_exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
					if(!email_reg_exp.test(document.member_form.email.value)){
						$(this).parents('.form').find('.signup_info').text('?대찓?? 二쇱냼瑜? ?ㅼ떆 ?뺤씤?댁＜?몄슂.');
					}else {
						$(this).parents('.form').find('.signup_info').text('');
					}
					return;
				}
				if ($(this).parents('.form').hasClass('name')){
					$(this).parents('.form').find('.signup_info').text('');
					return;
				}
			}
		}
	});


	$('.save_button').click(function(e){
		e.preventDefault();
		check_input();
	});
	$('.reset_button').click(function(e){
		e.preventDefault();
		reset_form();
	});
});