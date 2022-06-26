<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>랭킹</title>
<link rel="stylesheet" href="resources/myLib/reset.css" />
<link rel="stylesheet" href="resources/myLib/header.css" />
<link rel="stylesheet" href="resources/myLib/footer.css" />
<link rel="stylesheet" href="resources/myLib/ranking/ranking.css" />
</head>
<body>
	<header> </header>
	<main>
		<nav>
			<h2 class="hidden">랭킹 서브메뉴</h2>
			<div class="heading">
				<span>Ranking</span>
				<div>
					<span id="all" class="on">전체</span> <span id="category_one"
						class="">카테고리</span>
				</div>
			</div>
			<div class="category_wrap">
				<ul>
					<li><img src="resources/image/ic_arrow.svg" alt="왼쪽 이동"
						class="arrow arrow_left" /></li>
					<li class="category_scroll">
						<ul>
							<li id="c1" class="btn20px"><span>개발</span></li>
							<li id="c2" class="btn20px"><span>게임</span></li>
							<li id="c3" class="btn20px"><span>동물</span></li>
							<li id="c4" class="btn20px on"><span>먹방</span></li>
							<li id="c5" class="btn20px"><span>뷰티</span></li>
							<li id="c6" class="btn20px"><span>여행</span></li>
							<li id="c7" class="btn20px"><span>요리</span></li>
							<!-- <li id="c8" class="btn20px"><span>운동</span></li>
                            <li id="c9" class="btn20px"><span>음악</span></li>
                            <li id="c10" class="btn20px"><span>주식</span></li>
                            <li id="c11" class="btn20px"><span>키즈</span></li>
                            <li id="c12" class="btn20px"><span>패션</span></li> -->
							<!-- 스와이퍼 사용시 pagination 버튼(ex배너 아래의 점 세개)도 함께 적용해야 할듯-->
						</ul>
					</li>
					<li><img src="resources/image/ic_arrow.svg" alt="오른쪽 이동"
						class="arrow arrow_right" /></li>
				</ul>
			</div>
		</nav>

		<div>
			<div id="top3">
				<h1 class="hidden">인기 TOP3</h1>
				<div id="rank_2" class="rank_side">
					<span class="hidden">2위</span>
					<div class="rank_header">
						<img src="https://place-hold.it/160x160" alt="프로필사진">
						<div class="rank_num">2</div>
					</div>
					<div class="details">
						<span>LOVELY SWIMMER</span>
						<div class="mine_num">
							<span class="hidden">찜 개수</span> <img
								src="resources/image/ic_heart-1.svg"> <span>100</span>
						</div>
						<div class="hashtag">
							<span>#패션</span> <span>#운동</span> <span>#20대_인기</span>
						</div>
					</div>
				</div>
				<div id="rank_1" class="rank_main">
					<span class="hidden">1위</span>
					<div class="rank_header">
						<img src="https://place-hold.it/240x240" alt="프로필사진">
						<div class="rank_num first">1</div>
					</div>
					<div class="details">
						<span>김종국 GYM JONG KOOK</span>
						<div class="mine_num">
							<span class="hidden">찜 개수</span> <img
								src="resources/image/ic_heart-1.svg"> <span>150</span>
						</div>
						<div class="hashtag">
							<span>#패션</span> <span>#운동</span> <span>#20대_인기</span>
						</div>
					</div>
				</div>
				<div id="rank_3" class="rank_side">
					<span class="hidden">3위</span>
					<div class="rank_header">
						<img src="https://place-hold.it/160x160" alt="프로필사진">
						<div class="rank_num">3</div>
					</div>
					<div class="details">
						<span>핏블리 FITVELY</span>
						<div class="mine_num">
							<span class="hidden">찜 개수</span> <img
								src="resources/image/ic_heart-1.svg"> <span>10</span>
						</div>
						<div class="hashtag">
							<span>#패션</span> <span>#운동</span> <span>#20대_인기</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="list_wrap">
			<h3 class="hidden">인기 TOP4 이하</h3>
			<!-- 반복 -->
			<div class="list_item">
				<span>#4</span>
				<div id="rank_4">
					<!-- id = rank_(숫자)-->
					<div class="influencer_profile">
						<img src="https://place-hold.it/120x120" alt="프로필사진">
						<div class="details">
							<div class="desc">
								<span>김종국 GYM JONG KOOK</span>
								<div class="mine_num">
									<span class="hidden">찜 개수</span> <img
										src="resources/image/ic_heart-1.svg"> <span>100</span>
								</div>
							</div>
							<div class="hashtag">
								<span>#태그1</span> <span>#태그2</span> <span>#연령_인기</span>
							</div>
						</div>
					</div>
					<!-- 클릭시 mylist에 추가-->
					<div class="mine">
						<a href="#"> <span class="hidden">찜 하기</span> <img
							src="resources/image/ic_heart-0.svg">
						</a>
					</div>
					<div class="more">
						<span><a href="#">더 보기</a></span>
					</div>
				</div>
			</div>
		</div>
	</main>
	<footer> </footer>
	<script src="resources/myLib/jquery-3.2.1.min.js"></script>
	<script src="resources/myLib/ranking/ranking.js"></script>
</body>

</html>