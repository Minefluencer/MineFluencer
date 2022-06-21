<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심사 선택</title>
<link rel="stylesheet" href="resources/myLib/reset.css" />
<link rel="stylesheet" href="resources/myLib/join/check.css" />
</head>
<body>
	<div class="REGI_00201_">
		<div class="container">
			<h1>
				<img src="resources/image/logo.svg" alt="로고" class="logo" />
			</h1>
			<div class="categories_wrap">
				<div class="categories_header">
					<span class="head">관심있는 주제를 선택해보세요</span> <span class="headcontent">
						관심사에 맞는 콘텐츠를 추천해드립니다. <span class="text-style-1">최소 3개를 선택</span>해주세요.
					</span>
				</div>
					<div class="items_container">
						<div class="items_row">
							<div class="item_wrap">
								<input type="checkbox" name="check1" id="check1"><label
									for="check1">
									<div class="Vector">
											<span class=img></span>
										<span class="txt">운동</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check2" id="check2"><label
									for="check2">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">여행</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check3" id="check3"><label
									for="check3">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">뷰티</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check4" id="check4"><label
									for="check4">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">패션</span>
									</div>
								</label>
							</div>
						</div>
						<div class="items_row">
							<div class="item_wrap">
								<input type="checkbox" name="check5" id="check5"><label
									for="check5">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">먹방</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check6" id="check6"><label
									for="check6">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">요리</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check7" id="check7"><label
									for="check7">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">게임</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check8" id="check8"><label
									for="check8">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">음악</span>
									</div>
								</label>
							</div>
						</div>
						<div class="items_row">
							<div class="item_wrap">
								<input type="checkbox" name="check9" id="check9"><label
									for="check9">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">개발</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check10" id="check10"><label
									for="check10">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">동물</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check11" id="check11"><label
									for="check11">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">주식</span>
									</div>
								</label>
							</div>
							<div class="item_wrap">
								<input type="checkbox" name="check12" id="check12"><label
									for="check12">
									<div class="Vector">
										<span class=img></span>
										<span class="txt">키즈</span>
									</div>
								</label>
							</div>
						</div>
					</div>
					<div class="buttons_wrap">
						<button class="pass">
							<span class="btntext">건너뛰기</span>
						</button>
						<button class="save">
							<span class="btntext2">관심사 선택 완료</span>
						</button>
					</div>
			</div>
		</div>
	</div>
	<script src="resources/myLib/jquery-3.2.1.min.js"></script>
	<script src="resources/myLib/checkform.js"></script>
</body>
</html>