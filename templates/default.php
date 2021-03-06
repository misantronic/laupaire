<?php
$name = strtolower($this->getValue("name"));
$article = $this->getArticle();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= strtoupper($REX['SERVERNAME']) .' - '.htmlspecialchars($this->getValue("name")); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="google-site-verification" content="pLNLzINOA32Ukka7MFRJFGyH6q8Y_prh9FCjvpGspF4" />
	<meta charset="UTF-8">
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css' />
	<link rel="stylesheet" type="text/css" href="<?= $REX['HTDOCS_PATH'] ?>files/bin/style.min.css" />
</head>
<body class="page-<?= $name ?>">
	<div id="wrapper" class="container">
		<header>
			<div class="bg"></div>
			<div id="logo"><a href="<?php echo $REX['HTDOCS_PATH'] ?>">L`Aupaire</a></div>
			<!-- NAV -->
			REX_TEMPLATE[id="2"]
		</header>

		<div id="content" class="<?php if(empty($article)) { ?>empty<?php } ?>">
			<div class="container">
				<?php
				// tourdates
				$tourdate_first_pos = stripos($article, '<li class="tourdate">');
				if($tourdate_first_pos > -1) {
					$article = substr_replace($article, '<ul id="tourdates"><li><span class="bold">Date</span><span class="bold">City</span><span class="bold">Location</span><span class="bold text-right">Tickets</span></li>', $tourdate_first_pos, 0);

					// lass occurence
					$tourdate_last_pos = strripos($article, '</li>') + 5;
					$article = substr_replace($article, '</ul>', $tourdate_last_pos, 0);
				}

				echo $article;
				?>
			</div>
		</div>
	</div>

	<!-- SOCIAL MEDIA -->
	REX_TEMPLATE[id="4"]

	<?php if($name != 'newsletter') { ?>
		<!-- NEWSLETTER -->
		REX_TEMPLATE[id="5"]
	<?php } ?>

	<div id="fb-root"></div>

	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>files/bin/externals.min.js"></script>
	<script type="text/javascript" src="<?= $REX['HTDOCS_PATH'] ?>files/bin/internals.min.js"></script>
	<script src="//www.youtube.com/player_api"></script>
	<script src="//cdn.jsdelivr.net/whatsapp-sharing/1.3.2/whatsapp-button.js"></script>

	<!-- TRACKING -->
	REX_TEMPLATE[id="6"]
</body>
</html>
