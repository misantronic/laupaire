$(document).ready(function() {
	// newsletter
	$('a[title="Newsletter"]').on('click', function() {
		//$('html, body').animate({
		//	scrollTop: $('#form-subscribe').offset().top
		//}, function() {
		//	$('#txt-email').focus();
		//});
		$('#newsletter').toggleClass('focus');

		return false;
	});

	$('#form-subscribe').on('submit', function() {
		var form = $(this).addClass('loading'),
			action = form.attr('action'),
			email = form.find('#txt-email');

		$.getJSON(action + '?email='+ encodeURIComponent(email.val()), function(res) {
			form.removeClass('loading');

			if(res.error) {
				alert(res.error);
			} else {
				alert('Thank you for subscribing!');
				email.prop('disabled', true);
				form.find('.btn-subscribe').prop('disabled', true);
				$('#newsletter').removeClass('focus');
			}
		});

		return false;
	});
});