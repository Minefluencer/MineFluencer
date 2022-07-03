const checkedItem = $(this).children($('.category_input:checked'));
const imgItem = $(this).children($('.category_label'));

$('.category_label').click(function () {
	$('.category_label > img').attr('src', (a, change) => {
		if (change.match('1') && $('.category_input').is(':checked')) {
			$('.category_label > p').removeClass('active_item');
			return change.replace('1', '0');
		}
	});
	if ($('.category_input').is(':checked')) {
		$(this)
			.children('img')
			.attr('src', (a, change) => {
				if (change.match('0')) {
					$(this).children('p').addClass('active_item');
					return change.replace('0', '1');
				}
			});
	}
});
