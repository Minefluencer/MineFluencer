let regExpId = /^(?=.*[a-zA-Z])((?=.*\d)|(?=.*\W)).{6,20}$/;

$('#close').click(function () {
	$('.modal_container').css({
		display: 'none',
	});
});

// 회색 배경 클릭 시 모달 닫힘
$('.modal_container').click(function (e) {
	if (e.target.id === 'modal') {
		$('.modal_container').css({
			display: 'none',
		});
	}
});

$('form').submit(function (e) {
	if ($('#password').val().length === 0) {
		e.preventDefault();
		$('#check_p').html('비밀번호를 정상적으로 입력 해주세요');
	}

	if ($('#password').val().length < 8 && !regExpId.test($('#password').val())) {
		e.preventDefault();
		$('#check_p').html('영문 및 특수문자, 숫자 8자리 이상 입력하세요.');
	}

	if ($('#password').val() !== $('#password_check').val()) {
		e.preventDefault();
		$('#check_p').html('비밀번호가 일치하지 않습니다.');
	}
});
