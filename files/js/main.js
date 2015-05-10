String.prototype.rot13 = function(){
	return this.replace(/[a-zA-Z]/g, function(c){
		return String.fromCharCode((c <= "Z" ? 90 : 122) >= (c = c.charCodeAt(0) + 13) ? c : c - 26);
	});
};

$(document).ready(function() {
	initNewsletter();
	initCurtain();

	// decode email-addresses
	$('a.email').each(function() {
		var link = $(this);
		var href = link.attr('href').split("mailto:").join('');

		link.attr('href', 'mailto:'+ href.rot13());
	})
});

function initNewsletter() {
	var newsletter 	= $('#newsletter');
	var wrapper 	= $('#wrapper');

	// newsletter
	$('a[title="Newsletter"]').on('click', function() {
		var link = $(this);

		if(newsletter.hasClass('focus')) {
			newsletter.removeClass('focus');
			wrapper.off('click.content');
		} else {
			newsletter.addClass('focus');
			wrapper.on('click.content', function() {
				link.trigger('click');
			})
		}

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
				newsletter.removeClass('focus');
			}
		});

		return false;
	});
}

function initCurtain() {
	var curtain = $('#curtain:visible');
	if(curtain.length) {
		var curtainVideo = $('#curtain-video');
		curtainVideo.appendTo('#content');

		window.onYouTubePlayerAPIReady = function() {
			var videoId = curtainVideo.text();
			player = new YT.Player('curtain-video', {
				playerVars: { 'autoplay': 1, 'controls': 1 },
				videoId: videoId,
				width: 860,
				height: 460,
				events: {
					'onReady': onPlayerReady}
			});
		};
		window.onPlayerReady = function(e) {
			e.target.mute();
		};
	} else {
		initSocialMedia();
	}

	$('body').on('click', '#curtain', function(e) {
		$(e.currentTarget).addClass('up');

		initSocialMedia();
	});
}

function initSocialMedia() {
	setTimeout(function() {
		// fb
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.3&appId=572599766179075";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));

		// twitter
		!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');

		$('.widget-spotify').html('<iframe src="https://embed.spotify.com/follow/1/?uri=spotify:artist:6d9XIbBseVi999qdzDEtwE&size=basic&theme=light" width="200" height="25" scrolling="no" frameborder="0" style="border:none; overflow:hidden;" allowtransparency="true"></iframe>');
	}, 900);
}