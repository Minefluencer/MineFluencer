$('#id_btn').click(function () {
	$.ajax({
		type: 'Get',
		url: 'idGet.html',
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
		type: 'Get',
		url: 'pwGet.html',
		success: function (resultData) {
			$('.resultBox').html(resultData);
		},
		error: function () {
			alert('죄송합니다');
		},
	});
});
