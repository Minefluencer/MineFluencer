const result = document.getElementById('result');

const card = `<div class="card">
<div class="card_left">
    <img src="logo_default.svg" alt="유튜버 이미지" />
    <div class="about_youtuber">
        <h1>김종국</h1>
        <!--이름-->
        <h3>구독자 123 만 명</h3>
        <!-- 구독자 -->
        <span id="interest">#먹방</span>
        <!-- 관심사 -->
    </div>
</div>
<div class="card_right">
    <img src="./ic_heart-1.svg" alt="좋아요" />
    <a href="#">더 보기</a>
</div>
</div>`;

result.innerHTML = card;
