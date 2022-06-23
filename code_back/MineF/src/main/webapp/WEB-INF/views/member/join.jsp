<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="resources/myLib/reset.css" />
		<link rel="stylesheet" href="resources/myLib/join/join.css" />
		<title>회원가입</title>
	</head>
	<body>
		<div class="container">
			<h1><img src="resources/image/logo.svg" alt="로고" /></h1>
			<div class="form_box">
				<h1>회원가입</h1>
				<div class="line"></div>
				<form action ="interestCheck" method="post">
					<div class="input_box">
						<p>아이디</p>
						<input type="text" name="id" id="id" class="input_id" placeholder="아이디를 입력해주세요." autocomplete="off" />
						<div class="check_text">
							<span id="id_check"></span>
						</div>
					</div>
					<div class="input_box">
						<p>비밀번호</p>
						<input type="password" name="password" id="password" placeholder="비밀번호를 입력해주세요." autocomplete="off" />
						<div class="check_text">
							<span id="pw_check"></span>
						</div>
					</div>
					<div class="input_box">
						<p>비밀번호 확인</p>
						<input type="password" name="password_re" id="password_re" placeholder="비밀번호를 다시 입력해주세요." autocomplete="off" readonly />
						<div class="check_text">
							<span id="pw_re_check"></span>
						</div>
					</div>
					<div class="input_box">
						<p>이메일</p>
						<div class="email_box">
							<input type="text" name="email" id="email" autocomplete="off" />
							<p>@</p>
							<select name="com" id="com">
								<option value="naver.com">naver.com</option>
								<option value="google.com">google.com</option>
								<option value="daum.com">daum.net</option>
								<option value="kakao.com">kakao.com</option>
							</select>
						</div>
						<div class="check_text">
							<span id="email_check"></span>
						</div>
					</div>
					
					<div class="input_box">
						<p>생년월일</p>
						<input
							type="text"
							oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
							name="birth"
							id="birth"
							placeholder="주민등록번호 앞 6자리를 입력하세요."
							autocomplete="off"
							maxlength="6"
						/>
						<div class="check_text">
							<span id="birthd_check"></span>
						</div>
					</div>
					<div class="input_box">
						<p>성별</p>
						<div class="male_box">
							<div>
								<input type="radio" name="gender" id="man" value = "man"/>
								<p><label for="man">남</label></p>
							</div>
							<div>
								<input type="radio" name="gender" id="women" value = "women"/>
								<p><label for="women">여</label></p>
							</div>
						</div>
					</div>
					<div class="input_box">
						<p>닉네임</p>
						<input type="text" name="nick_name" id="nick_name" value ="${apple}" readonly />
						<div class="check_text">
							<span id="name_check">자동으로 부여 된 닉네임 입니다.</span>
						</div>
					</div>
					<div class="input_box color_box">
						<p>좋아하는 색은?</p>
						<select name="color" id="color">
							<option value="red">빨간색</option>
							<option value="green">초록색</option>
							<option value="blue">파랑색</option>
						</select>
						<div class="check_text">
							<span>아이디 | 비밀번호 찾기에 도움이 됩니다.</span>
						</div>
					</div>
					<button type="submit" id="submit_btn">회원가입</button>
				</form>
			</div>
		</div>
		<script src="resources/myLib/jquery-3.2.1.min.js"></script>
		<script src="resources/myLib/join/form.js"></script>
		<script src="resources/myLib/join/idCheck.js"></script>
	</body>
</html>
