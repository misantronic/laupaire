<?php
$name = strtolower($this->getValue("name"));
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= strtoupper($REX['SERVERNAME']) .' - '.htmlspecialchars($this->getValue("name")); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="UTF-8">

	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<?= $REX['HTDOCS_PATH'] ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
	<!--link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>node_modules/perfect-scrollbar/dist/css/perfect-scrollbar.min.css" /-->
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>bower_components/fancybox/source/jquery.fancybox.css" />
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>files/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>files/css/icons.css" />
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>files/css/modules.css" />
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>files/css/pages.css" />

	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>bower_components/jquery/dist/jquery.min.js"></script>
	<!--script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>node_modules/perfect-scrollbar/dist/js/min/perfect-scrollbar.jquery.min.js"></script-->
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>files/js/main.js"></script>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>bower_components/benbarnett/jQuery-Animate-Enhanced/jquery.animate-enhanced.min.js"></script>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>bower_components/fancybox/source/jquery.fancybox.pack.js"></script>
	<script src="//www.youtube.com/player_api"></script>

	<?php if($name == 'video') { ?>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>files/js/video.js"></script>
	<?php } ?>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>files/js/gallery.js"></script>
</head>

<body class="page-<?= $name ?>">
	<div id="wrapper" class="container">
		<header>
			<div class="bg"></div>
			<div id="logo"><a href="<?php echo $REX['HTDOCS_PATH'] ?>">L`Aupaire</a></div>
			<!-- NAV -->
			REX_TEMPLATE[id="2"]
		</header>

		<div id="content">
			<div class="container">
				<?php
				$article = $this->getArticle();

				// tourdates
				$tourdate_first_pos = stripos($article, '<li class="tourdate">');
				if($tourdate_first_pos > -1) {
					$article = substr_replace($article, '<ul id="tourdates">', $tourdate_first_pos, 0);

					// lass occurence
					$tourdate_last_pos = strripos($article, '</li>') + 5;
					$article = substr_replace($article, '</ul>', $tourdate_last_pos, 0);
				}

				echo $article;
				?>
			</div>
		</div>
	</div>
	<!-- NEWSLETTER -->
	REX_TEMPLATE[id="5"]
	<!-- SOCIAL MEDIA -->
	REX_TEMPLATE[id="4"]

	<div id="fb-root"></div>
	<script>(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.3&appId=572599766179075";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
</body>
</html>
