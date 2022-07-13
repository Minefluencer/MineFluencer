<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="resources/myLib/reset.css" />
    <link rel="stylesheet" href="resources/myLib/header.css" />
    <link rel="stylesheet" href="resources/myLib/footer.css" />
    <link rel="stylesheet" href="resources/myLib/my_page/my_page.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="resources/myLib/hamburger.css" />
</head>
<body>
	<header>
		<jsp:include page="../module/header.jsp" />
	</header>
	
    
    
    <main>
        <div class="profile_info">
            <img src="resources/image/ic_profile.svg" class="내 프로필사진">
            <div class="user_detail">
                <span>${Login_Name}</span>
                <span>${Login_Email}</span>
            </div>
            <div class="btn12px"><a href="mypagef?jcode=U">내 정보 수정</a></div>
        </div>
        <div class="details_wrap">
            <div class="categories_strip">
                <span>관심있는 카테고리</span>
                <div class="categories">
                    <!-- 관심사 있는 만큼 반복 -->
                    <c:if test="${mlist.interest ne null}">
                    	<c:forEach begin="0" var="inter" items="${mlist.interest}">
                    		<c:choose>
                    			<c:when test="${inter == '음악'}">
	                    			<div class="item_wrap"><img src="resources/image/music-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '운동'}">
	                    			<div class="item_wrap"><img src="resources/image/traning-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '여행'}">
	                    			<div class="item_wrap"><img src="resources/image/travel-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '뷰티'}">
	                    			<div class="item_wrap"><img src="resources/image/beauty-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '패션'}">
	                    			<div class="item_wrap"><img src="resources/image/fashion-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '먹방'}">
	                    			<div class="item_wrap"><img src="resources/image/food-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '요리'}">
	                    			<div class="item_wrap"><img src="resources/image/cook-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '게임'}">
	                    			<div class="item_wrap"><img src="resources/image/game-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '개발'}">
	                    			<div class="item_wrap"><img src="resources/image/develop-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '동물'}">
	                    			<div class="item_wrap"><img src="resources/image/animal-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '주식'}">
	                    			<div class="item_wrap"><img src="resources/image/stock-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
                    			<c:when test="${inter == '키즈'}">
	                    			<div class="item_wrap"><img src="resources/image/kids-1.svg" alt="아이콘"><span>${inter}</span></div>
	                    		</c:when>
	                    	</c:choose>
                    	</c:forEach>
                    </c:if>
                    <c:if test="${mlist.interest eq null}">
                    	<div class="item_wrap"><img src="resources/image/ic_sad.svg" alt="아이콘"><span><pre>관심사가 없습니다!</pre></span></div>
                    </c:if>
                </div>
            </div>
            <div class="info_details">
                <div class="heading">
                    <span>내 정보</span>
                    <span>회원가입시 입력하신 정보를 볼 수 있습니다.</span>
                </div>
                <div class="result_area">
                    <div class="labels">
                        <span class="hidden">항목</span>
                        <span>이름</span>
                        <span>성별</span>
                        <span>생년월일</span>
                        <span>아이디</span>
                        <span>이메일</span>
                    </div>
                    <div class="my_info">
                        <span class="hidden">내용</span>
                        <span>${mlist.nick_name}</span>
                        <span>${mlist.gender}</span>
                        <span>${mlist.birth}</span>
                        <span>${mlist.id}</span>
                        <span>${mlist.email}</span>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
    	<jsp:include page="../module/footer.jsp" />
    </footer>
    <script>

    $(document).ready(function () {
    	let flag = true;
    	$(".hamIcon").click(function () {
    		if(flag) {
    			flag = false;
    			$("#hamMenu").addClass("open");
    		}else {
    			flag = true;
    			$("#hamMenu").removeClass("open");
    		}
    	    
    	});
    	
    var burger = $('.hamIcon');

    burger.each(function(index){
      var $this = $(this);
      
      $this.on('click', function(e){
        e.preventDefault();
        $(this).toggleClass('active-' + (index+1));
      })
    });
    });
    </script>
    <script src="resources/myLib/jquery-3.2.1.min.js"></script>
	<script src="resources/myLib/header.js"></script>
</body>
</html>
