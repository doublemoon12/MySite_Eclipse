<script>
	$(document).ready(function(){
		$('#IdCheck').click(function(){
			let loginId = $('#loginId').val().trim();
			
			if(loginId.length < 4){
				$('#idCheckLength').removeClass('d-none');
				$('#idCheckDuplicated').addClass('d-none');
				$('#idCheckOk').addClass('d-none');
				return;
			}
			
			$.ajax({
				url: '/user/is_duplicated_id'
				, type: 'get'
				, data: {'loginId':loginId}
				, success: function(data){
					if(data.result == true){
						$('#idCheckDuplicated').removeClass('d-none'); 
						$('#idCheckLength').addClass('d-none');
						$('#idCheckOk').addClass('d-none');
					} else{
						$('#idCheckOk').removeClass('d-none');
						$('#idCheckLength').addClass('d-none');
						$('#idCheckDuplicated').addClass('d-none');
					}
				},
				error:function(error){
					alert("아이디 중복확인에 실패했습니다.");
				}
				
			});
		});
		
		$('#signUpForm').submit(function(e){
			e.preventDefault();
			

			let loginId = $('#loginId').val().trim();
			if(loginId == ''){
				alert('아이디를 입력하세요');
				return;
			}
			
			let password = $('#password').val();
			let confirmPassword = $('#confirmPassword').val();
			if(password == ''){
				alert('패스워드를 입력하세요');
				return;
			}
			if(confirmPassword != password){
				alert('비밀번호가 일치하지 않습니다.');
				$('#password').val('');
				$('#confirmPassword').val('');
				return;
			}
			
			let userName = $('#userName').val().trim();
			if(userName == ''){
				alert('이름을 입력하세요.');
				return;
			}
			
			let email = $('#email').val().trim();
			if(email == ''){
				alert('이메일을 입력하세요.');
				return;
			}
			
			let address = $('#address').val().trim();
			if(address == ''){
				alert('주소를 입력하세요.');
				return;
			}
			
			if($('#idCheckOk').hasClass('d-none')){
				alert("아이디 중복확인을 해주세요.");
				return;
			}
			
			let url = "/user/sign_up";
			
			let data = $(this).serialize();
			
			$.post(url, data).done(function(data){
				if(data.result == "success"){
					alert("DeliEats 회원가입을 환영합니다. ")
					location.href="/user/sign_in_view";
				} else{
					alert("가입에 실패했습니다. 다시 시도해주세요.")
				}
			});
		});
	});
	
</script>