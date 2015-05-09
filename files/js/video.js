function onPlayerReady(event) {
	event.target.playVideo();
}

function onPlayerStateChange(event) {
	if (event.data === 0) {
		$.fancybox.next();
	}
}

function onYouTubePlayerAPIReady() {
	var isMobile = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()));

	$(document).ready(function() {
		if(!isMobile) {
			$(".fancybox")
				.attr('rel', 'gallery')
				.fancybox({
					openEffect  : 'none',
					closeEffect : 'none',
					nextEffect  : 'none',
					prevEffect  : 'none',
					padding     : 0,
					margin      : 50,
					maxWidth	: 1280,
					maxHeight	: 720,
					width		: '95%',
					height		: '95%',
					scrolling	: 'no',
					tpl			: {
						closeBtn: '<a href="javascript:;" class="fancybox-close"><i class="glyphicon glyphicon-remove"></i></a>'
					},
					beforeShow  : function() {
						// Find the iframe ID
						var id = $.fancybox.inner.find('iframe').attr('id');

						// Create video player object and add event listeners
						var player = new YT.Player(id, {
							events: {
								'onReady': onPlayerReady,
								'onStateChange': onPlayerStateChange
							}
						});
					}
				});
		}
	});
}