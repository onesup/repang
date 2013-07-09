jQuery(function ($) {
	livere();
});

function livere() {
	$('.register_button').click(function (e) {
		$('#register_form').modal();
	  // $("#register_form").slideDown();		
		return false;
	});	
}
