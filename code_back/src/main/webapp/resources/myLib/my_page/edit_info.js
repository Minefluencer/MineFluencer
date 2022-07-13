
$('#submit_btn').click(() => {
	var formData = {
		nick_name: $('#nick_name').val(),
		id: $('#id').val(),
		email: encodeURIComponent($('#email').val() + '@' + $('#com option:selected').attr('value')),
		birth: $('#birth').val(),
		gender: $('input[name = "gender"]:checked').val(),
		color: $('#color option:selected').attr('value'),
	}
	$.ajax({
		url: 'updateU',
		type: 'POST',
		charset: "UTF-8",
		data: formData,
		success: (resultData) => {
			if ( resultData.code=='200' ) {
				alert('수정이 성공적으로 처리되었습니다.');
				window.location.href = "home";
			} else {
				alert('오류 !! 잠시후 다시 시도해주세요.');
			}
		},
		error: ((err) => {
			id.focus();
		})
	});
});

$('#submit_btnP').click(() => {
	var formData = {
		id: $('#id').val(),
		password: $('#password').val(),
		newPassword: $('#newPassword').val()
	}
	$.ajax({
		url: 'updateP',
		type: 'POST',
		charset: "UTF-8",
		data: formData,
		success: (resultData) => {
			if ( resultData.codeS=='300' ) {
				alert('수정이 성공적으로 처리되었습니다.');
				console.log('성공적이였다 맨이야');
				location.href = "home";
			} else {
				alert('오류 !! 비밀번호를 다시 시도해주세요.');
			}
		},
		error: ((err) => {
			password.focus();
		})
	});
});


$('#submit_btnI').click(function(){

        var chk_data = [];
        $("input[name=check]:checked").each(function(i) {
        	chk_data.push($(this).val());
        });
        console.log(chk_data);
         $.ajax({
        	url: 'updateI',
        	type: 'post',
			charset: "UTF-8",
        	dataType: 'json',
        	data: {
        		valueArrTest: chk_data,
				id: $('#id').val()
        	},
			success: (resultData) => {
			if ( resultData.codeS=='300' ) {
				alert('수정이 성공적으로 처리되었습니다.');
				console.log('성공적이였다 맨이야');
				location.href = "home";
			} else {
				alert('오류 !! 관심사를 다시 선택해주세요.');
			}
			},
			error: ((err) => {
				password.focus();
			})
        });

});