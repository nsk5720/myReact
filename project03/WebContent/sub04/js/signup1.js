$(function(){
	if(check_id_var=='true') {
		$('.form.id>.col2 input').val(current_check_id);
		$('.form.id>.col2 input').attr('readonly', true);
		$('.form.id>.col2 input').css('background-color', '#cccccc');
		$('.id_image').css('background', 'url(images/login_id_icon.png) no-repeat -35px 0');
		document.member_form.pass.focus();
	}else{
		document.member_form.id.focus();
	}

	function check_input()
	{	
		if (!document.member_form.id.value.trim()){
			$('.id_info').text('먼저 아이디 입력이 필요합니다.');
			document.member_form.id.focus();
			return;
		}
		if (!document.member_form.pass.value.trim()){
			$('.password_info').text('필수 정보입니다.');
			$('.pass_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
			document.member_form.pass.focus();
			return;
		}
		/* 패스워드 정규식 */
		var pass_reg_exp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
		if(!pass_reg_exp.test(document.member_form.pass.value)){
			$('.password_info').text('4~15자 영문, 숫자를 조합하세요.');
			$('.pass_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
			document.member_form.pass.focus();
			return;
		} 
		if (!document.member_form.pass_confirm.value.trim()){
			$('.pass_confirm_info').text('필수 정보입니다.');
			document.member_form.pass_confirm.focus();
			return;
		}
		if (!document.member_form.name.value.trim()){
			$('.name_info').text('필수 정보입니다.');
			document.member_form.name.focus();
			return;
		}
		if (!document.member_form.email.value.trim()){
			$('.email_info').text('필수 정보입니다.');
			document.member_form.email.focus();
			return;
		}
		/* 이메일 체크 정규식 */
		var email_reg_exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
		if(!email_reg_exp.test(document.member_form.email.value)){
			$('.email_info').text('이메일 주소를 다시 확인해주세요.');
			document.member_form.email.focus();
			return;
		}
		if (document.member_form.pass.value.trim() != document.member_form.pass_confirm.value.trim())
		{
			$('.pass_confirm_info').text('비밀번호가 일치하지 않습니다.');
			$('.pass_confirm_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
			document.member_form.pass_confirm.focus();
			return;
		}
		$('*').css('cursor','wait');
		document.member_form.submit();
	}

	function reset_form(){
		window.location.href='sub04.html'
		return;
	}

	/*function check_id(){
		window.location.href='sub04.html=' + document.member_form.id.value*/
		// window.open("sub_check_id.php?id=" + document.member_form.id.value,
		// 	"IDcheck",
		// 	"left=700, top=300, width=350, height=200, scrollbars=no, resizable=yes");
	/*}	*/

	/* 모든 입력 */
	/*$('.form>.col2 input').not('.form.id>.col2 input').focus(function(){
		if(check_id_var!='true'){
			if(!document.member_form.id.value.trim()){
				$('.id_info').text('먼저 아이디 입력이 필요합니다.');
			}
			document.member_form.id.focus();
		}
	});*/

	$('.form>.col2 input').not('.form.id>.col2 input').blur(function(){
		if(check_id_var=='true'){
			if(!this.value.trim()){
				$(this).parents('.form').find('.signup_info').text('필수 정보입니다.');
				if($(this).parents('.form').hasClass('password')){
					$('.pass_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 	
					return;
				}
				if($(this).parents('.form').hasClass('pass_confirm')){
					$('.pass_confirm_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					return;
				}				
			}else if (this.value.trim()){
				if ($(this).parents('.form').hasClass('pass_confirm')){
					if(document.member_form.pass.value.trim() != document.member_form.pass_confirm.value.trim()){
						$('.pass_confirm_info').text('비밀번호가 일치하지 않습니다.');
						$('.pass_confirm_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					} else if(document.member_form.pass.value.trim() == document.member_form.pass_confirm.value.trim()){
						$('.pass_confirm_info').text('');
						$('.pass_confirm_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -130px 0');
					}else{
						$('.pass_confirm_info').text('');
						$('.pass_confirm_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -43px 0');
					}
					return;
				}
				if($(this).parents('.form').hasClass('password')){
					/* 패스워드 정규식 */
					var pass_reg_exp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{4,15}$/;
					if(!pass_reg_exp.test(document.member_form.pass.value)){
						$(this).parents('.form').find('.signup_info').text('4~15자 영문, 숫자를 조합하세요.');
						$('.pass_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat 0 0'); 
					} else{
						$(this).parents('.form').find('.signup_info').text('');
						$('.pass_image').css('background', 'url(images/m_icon_pw_step.png) no-repeat -87px 0'); 
						return;
					}
				}
				if($(this).parents('.form').hasClass('email')){
					/* 이메일 체크 정규식 */
					var email_reg_exp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; 
					if(!email_reg_exp.test(document.member_form.email.value)){
						$(this).parents('.form').find('.signup_info').text('이메일 주소를 다시 확인해주세요.');
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

	/* id 입력 */
	var id_reg_exp = /^[a-z0-9]{5,11}$/g; //아이디 체크 정규식
	
	$('.form.id>.col2 input').blur(function(e){
		e.preventDefault();
		if(check_id_var=='true'){
			return;
		}else if (!id_reg_exp.test(document.member_form.id.value) && document.member_form.id.value.trim()){
			$('.id_info').text('5~11자의 영문 소문자, 숫자만 사용 가능합니다.');
			document.member_form.id.focus();			
		}
		else if (!document.member_form.id.value.trim()){
			$('.id_info').text('먼저 아이디 입력이 필요합니다.');
			document.member_form.id.focus();
		} else {
			$('.id_check_text').show();
			check_id();
		}
	});

	/* 제출 및 취소 버튼 */
	$('.save_button').click(function(e){
		e.preventDefault();
		check_input();
	});
	$('.reset_button').click(function(e){
		e.preventDefault();
		reset_form();
	});
});