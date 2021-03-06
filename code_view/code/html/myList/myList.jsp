<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>찜 목록</title>
<link rel="stylesheet" href="resources/myLib/my_list.css" />
<link rel="stylesheet" href="resources/myLib/reset.css" />
</head>
<body>
<body id="main_container">
		<header>header 공간</header>
		<div class="container">
			<h1 id="user">김지후<!--데이터--><span>님의 찜 목록</span></h1>
			<div class="main">
				<div class="category">
					<form action="#">
						<ul>
							<div class="reset">
								<h1>카데고리</h1>
								<button type="reset">초기화</button>
							</div>
							<li>
								<input type="checkbox" id="codding" name="myList" />
								<label for="codding">개발</label>
							</li>
							<li>
								<input type="checkbox" id="game" name="myList" value="coding" />
								<label for="game">게임</label>
							</li>
							<li>
								<input type="checkbox" id="animal" name="myList" value="coding" />
								<label for="animal">동물</label>
							</li>
							<li>
								<input type="checkbox" id="food" name="myList" value="coding" />
								<label for="food">먹방</label>
							</li>
							<li>
								<input type="checkbox" id="beauty" name="myList" value="coding" />
								<label for="beauty">뷰티</label>
							</li>
							<li>
								<input type="checkbox" id="travel" name="myList" value="coding" />
								<label for="travel">여행</label>
							</li>
							<li>
								<input type="checkbox" id="cook" name="myList" value="coding" />
								<label for="cook">요리</label>
							</li>
							<li>
								<input type="checkbox" id="traning" name="myList" value="coding" />
								<label for="traning">운동</label>
							</li>
							<li>
								<input type="checkbox" id="music" name="myList" value="coding" />
								<label for="music">음악</label>
							</li>
							<li>
								<input type="checkbox" id="stock" name="myList" value="coding" />
								<label for="stock">주식</label>
							</li>
							<li>
								<input type="checkbox" id="kids" name="myList" value="coding" />
								<label for="kids">키즈</label>
							</li>
							<li>
								<input type="checkbox" id="fashion" name="myList" value="coding" />
								<label for="fashion">패션</label>
							</li>
						</ul>
					</form>
				</div>
				<div class="inf_list" id="result">
					<img src="resources/image/logo_default.svg" alt="로고" />
					<h1>나만의 인플루언서가 고민되나요?</h1>
					<p><span>MINE플루언서</span>에서 찾아보세요!</p>
					<div class="btn_box">
						<a href="#">
							<button class="btn main_btn">메인으로</button>
						</a>
						<a href="#">
							<button class="btn rank_btn">랭킹</button>
						</a>
					</div>
				</div>
			</div>
		</div>
		<footer>footer</footer>
		<script src="resources/myLib/my_list.js"></script>
	</body>
</body>
</html>
