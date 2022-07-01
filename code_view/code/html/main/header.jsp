<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>header</title>
	</head>
	<body>
		<div class="nav">
			<nav>
				<div class="nav_left">
					<h1>
						<img src="resources/image/logo.svg" alt="마인플루언서" /><span id="mine">MINE<span>플루언서</span></span>
					</h1>
					<ul>
						<li><a href="mylistf">찜 목록</a></li>
						<li><a href="rankf">랭킹</a></li>
						<li><a href="#">About</a></li>
						<c:if test="${Login_Name == '최성림'}">
							<li><a href="ytube">index</a></li>
						</c:if>
					</ul>
				</div>
				<div class="nav_right">
				<c:if test="${empty Login_Id}">
					<span><a href="loginf">로그인</a></span>
					<span id="join"><a href="joinf">회원가입</a></span>
					<div class="hamIcon">
						<span> </span>
						<span> </span>
						<span> </span>
					</div>
					
				</c:if>
				<c:if test="${not empty Login_Id}">
					<span>${Login_Name}님 환영합니다.</span>
					<span id="join"><a href="logout">로그아웃</a></span>
					<!-- <img src="resources/image/hamberger.svg" alt="메뉴" /> 햄버거 메뉴 아이콘-->
					<div class="hamIcon">
						<span> </span>
						<span> </span>
						<span> </span>
					</div>
				</c:if>
					<article id="hamMenu">
		                <div id="hamTop">
		                    <h1 class=hidden>햄버거 메뉴 회원 정보</h1>
		                	<div id="hamInfo_default">
		                		<c:if test="${empty Login_Id}">
									<span style="font-size:2rem; display:flex;">로그인을 먼저 해주세요</span>
								</c:if>
							</div>
							<div id="hamInfo_login">
								<c:if test="${not empty Login_Id}">
									<span style="font-size:2rem;">${Login_Name}님</span>
									<span style="font-size:2rem;">${Login_Email}</span>
									<span id="join" style="font-size:2rem;"><a href="logout">로그아웃</a></span>
								</c:if>
		                	</div>
		                </div>
		                
		                <div id="hamBottom">
		               		<h1 class="hidden">햄버거 메뉴 리스트</h1>
		                    <ul>
		                        <li><a href="#"><span>마이페이지</span></a></li>
		                        <li><a href="mylistf"><span>찜 목록</span></a></li>
		                        <li><a href="rankf"><span>랭킹</span></a></li>
		                        <li><a href="#"><span>About</span></a></li>
		                        <li><a href="#"><span>검색</span></a></li>
		                    </ul>
		                </div>
		            </article>
				</div>
			</nav>
		</div>
	</body>
</html>
