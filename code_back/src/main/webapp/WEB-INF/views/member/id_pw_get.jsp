<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="resources/myLib/login/id_pw_get.css" />
		<link rel="stylesheet" href="resources/myLib/reset.css" />
		<title>아이디 비밀번호 찾기</title>
	</head>
	<body>
		<div class="container">
			<h1><img src="resources/image/logo.svg" alt="로고" /></h1>
			<div class="id_pw_box">
				<div class="ax_btn">
					<div class="btn_text">
						<p class="active" id="id_btn" data-tab="tab_1">아이디 찾기</p>
						<p id="pw_btn" data-tab="tab_2">비밀번호 찾기</p>
					</div>
				</div>
				<div id="result">
					<div id="tab_1" class="content active">
						<h1>* 아이디를 잊으셨나요?<br /><span>회원가입시 등록한 정보</span>를 입력해주세요!</h1>
						<form action="idGet" method="post">
							<div class="input_box">
								<p>이메일</p>
								<input type="text" placeholder="이메일을 입력해주세요." id="email_get" name="email_get" />
							</div>
							<div class="input_box">
								<p>생년월일</p>
								<input
									type="text"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
									name="birthday_get"
									id="birthday_get"
									placeholder="주민등록번호 앞 6자리를 입력하세요."
									autocomplete="off"
									maxlength="6"
								/>
							</div>
							<div class="input_box color_box">
								<p>좋아하는 색은?</p>
								<select name="color_get" id="color_get">
									<option value="red">빨간색</option>
									<option value="green">초록색</option>
									<option value="blue">파랑색</option>
								</select>
							</div>
							<button id="submit_btn">아이디 찾기</button>
						</form>
					</div>

					<div id="tab_2" class="content">
						<h1>* 비밀번호를 잊으셨나요?<br /><span>회원가입시 등록한 정보</span>를 입력해주세요!</h1>
						<form action="pwGet" method="post">
							<div class="input_box">
								<p>아이디</p>
								<input type="text" placeholder="아이디을 입력해주세요." id="id_get" name="id_get" />
							</div>
							<div class="input_box">
								<p>생년월일</p>
								<input
									type="text"
									oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
									name="birthday_get"
									id="birthday_get"
									placeholder="주민등록번호 앞 6자리를 입력하세요."
									autocomplete="off"
									maxlength="6"
								/>
							</div>
							<div class="input_box color_box">
								<p>좋아하는 색은?</p>
								<select name="color_get" id="color_get">
									<option value="red">빨간색</option>
									<option value="green">초록색</option>
									<option value="blue">파랑색</option>
								</select>
							</div>
							<button id="submit_btn">비밀번호 찾기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="resources/myLib/jquery-3.2.1.min.js"></script>
		<script src="resources/myLib/login/id_pw_get.js"></script>
	</body>
</html>