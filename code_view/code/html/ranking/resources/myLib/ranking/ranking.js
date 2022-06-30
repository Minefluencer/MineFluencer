// 전체 or 카테고리 선택 시 서브메뉴 on off (애니메이션 미구현)
let flag = false;
$('#all').click(function () {
	$('#category_one').removeClass('on');
	$('#all').addClass('on');
	if (flag == true) {
		$('.category_wrap').css('display', 'none');
		return (flag = false);
	}
});
$('#category_one').click(function () {
	$('#all').removeClass('on');
	$('#category_one').addClass('on');
	if (flag == false) {
		$('.category_wrap').css('display', 'flex');
		return (flag = true);
	}
});

// 12가지 카테고리 중 1가지 선택
$('.category_scroll>ul>li').click(function () {
	let category = $(this).attr('id');
	if ($('#' + category).hasClass('on')) {
		// 이미 선택된 카테고리 클릭
	} else {
		// 다른 카테고리 클릭
		$('#' + category).addClass('on');
		$('.btn20px')
			.not('#' + category)
			.removeClass('on');
	}
});

// 찜하기 이미지 교체
$('.mine').click(() => {
	$('.mine>a>img').attr('src', function (index, heart) {
		if (heart.match('0')) {
			// 빈 하트일 때
			return heart.replace('0', '1'); // 꽉찬 하트로 변경 (mylist 담기)
		} else {
			return heart.replace('1', '0'); // 빈 하트로 변경
		}
	});
});

$('.btn20px').click(function () {
	switch (this.id) {
		case 'c1':
		case 'c2':
		case 'c3':
		case 'c4':
		case 'c5':
		case 'c6':
		case 'c7':
		case 'c8':
		case 'c9':
		case 'c10':
		case 'c11':
		case 'c12':
	}
}); // ajax요청 id 값으로 해당하는 content 를 출력 (개발중)
