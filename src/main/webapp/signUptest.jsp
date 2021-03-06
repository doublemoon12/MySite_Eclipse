<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="container d-flex align-items-center justify-content-center">
	<div class="sign-up-box">
		<h1 class="mb-4 mt-4" style="font-family: 'Noto Sans KR'">회원가입</h1>
		<form id="signUpForm" method="post" action="/user/sign_up_for_submit">
			<table class="sign-up-table table table-bordered">
				<tr>
					<th class="bgGrey">* 아이디(4자 이상)<br></th>
					<td>
						<div class="d-flex">
							<input type="text" id="loginId" name="loginId" class="form-control" placeholder="아이디를 입력하세요.">
							<button type="button" id="IdCheck" class="btn btn-success">중복확인</button><br>
						</div>
						
						<div id="idCheckLength" class="small text-danger d-none">ID를 4자 이상 입력해주세요.</div>
						<div id="idCheckDuplicated" class="small text-danger d-none">이미 사용중인 ID입니다.</div>
						<div id="idCheckOk" class="small text-success d-none">사용 가능한 ID 입니다.</div>
					</td>
				</tr>
				<tr>
					<th class="bgGrey">* 비밀번호</th>
					<td><input type="password" id="password" name="password" class="form-control" placeholder="비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<th class="bgGrey">* 비밀번호 확인</th>
					<td><input type="password" id="confirmPassword" class="form-control" placeholder="비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<th class="bgGrey">* 이름</th>
					<td><input type="text" id="userName" name="userName" class="form-control" placeholder="이름(닉네임)을 입력하세요."></td>
				</tr>
				<tr>
					<th class="bgGrey">* 이메일</th>
					<td><input type="text" id="email" name="email" class="form-control" placeholder="이메일을 입력하세요."></td>
				</tr>
				<tr>
					<th class="bgGrey">* 주소</th>
					<td><input type="text" id="address" name="address" class="form-control" placeholder="주소를 입력하세요."></td>
				</tr>
			</table>
			<br>
		
			<button type="submit" id="signUpBtn" class="btn btn-primary float-right mb-3 mr-3">회원가입</button>
		</form>
	</div>
</div>

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