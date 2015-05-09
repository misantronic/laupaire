$(document).ready(function() {
	$("a.link-gallery").fancybox({
		openEffect	: 'elastic',
		closeEffect	: 'elastic',
		//prevEffect	: 'none',
		//nextEffect	: 'none',
		maxWidth	: 1280,
		maxHeight	: 720,
		width		: '95%',
		height		: '95%',
		scrolling	: 'no',
		padding		: 0,

		tpl			: {
			closeBtn: '<a href="javascript:;" class="fancybox-close"><i class="glyphicon glyphicon-remove"></i></a>'
		},

		helpers : {
			title : {
				type : 'inside'
			}
		}
	});
});