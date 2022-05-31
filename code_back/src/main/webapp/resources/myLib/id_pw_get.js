$('#id_btn').click(function () {
	$.ajax({
		type: 'Post',
		url: 'idGetf',
		success: function (result) {
			$('.resultBox').html(result);
		},
		error: function () {
			alert('죄송합니다');
		},
	});
});

$('#pw_btn').click(function () {
	$.ajax({
		type: 'Post',
		url: 'pwGetf',
		success: function (resultData) {
			$('.resultBox').html(resultData);
		},
		error: function () {
			alert('죄송합니다');
		},
	});
});
