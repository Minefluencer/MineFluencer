/**
 * 
 */

$('.save').click(function(){
        var chk_data = [];
        $("input[name=check]:checked").each(function(i) {
        	chk_data.push($(this).val());
        });
        console.log(chk_data);
         $.ajax({
        	url: 'updateI',
        	type: 'post',
        	dataType: 'text',
        	data: {
        		valueArrTest: chk_data
        	}
        });
	});