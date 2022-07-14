<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="resources/myLib/reset.css" />
		<link rel="stylesheet" href="resources/myLib/inf/inf.css" />
		<title>마이페이지</title>
	</head>
	<body>
		<header></header>
		<div class="container">
			<div class="info">
				<div class="line"></div>
				<div class="info_text">
					<div class="inf_img">
						<img src="${list.image}" alt="인플루언서" />
						<div class="inf_info">
							<h1>${list.name}</h1>
							<p>#${list.job}</p>
						</div>
					</div>
					<div class="inf_list">
						<img src="resources/image/ic_heart-1.svg" alt="찜하기" />
						<p>찜하기</p>
					</div>
				</div>
			</div>
			<div class="inf_many">
				<div class="inf_many_box">
					<h1>210</h1>
					<p>명이 찜했어요</p>
				</div>
				<div class="inf_many_box">
					<h1>${list.subscribe}</h1>
					<p>명이 구독해요</p>
				</div>
			</div>
			<div class="inf_about_text">
				<h1>About</h1>
				<p>${list.introduce}</p>
			</div>
			<div class="inf_platform">
				<h1>Platforms</h1>
				<div class="platforms_boxs">
					<div class="platforms_box">
						<c:if test="${list.youtube_addr != null }">
							<a href="${list.youtube_addr}"><img src="./resources/image/logo_youtube.svg" alt="유튜브로 이동" /></a>
						</c:if>
					</div>
					<div class="platforms_box">
						<c:if test="${list.insta_addr != null }">
							<a href="${list.insta_addr}"><img src="./resources/image/logo_instagram.svg" alt="인스타그램으로 이동" /></a>
						</c:if>
					</div>
					<div class="platforms_box">
						<c:if test="${list.default_addr != null }">
							<a href="${list.default_addr}"><img src="./resources/image/logo_twitter.svg" alt="트위터로 이동" /></a>
						</c:if>
						<c:if test="${list.default_addr == null && list.default_addr == '' }">
							<a href="home"><img src="./resources/image/logo_youtube.svg" alt="빈 값" /></a>
						</c:if>
					</div>
				</div>
			</div>
		</div>

		<footer></footer>
		<script src="resources/myLib/jquery-3.2.1.min.js"></script>
		<script src="resources/myLib/inf/inf.js"></script>
	</body>
</html>
