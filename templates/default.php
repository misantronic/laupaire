<!DOCTYPE html>
<html lang="en">
<head>
	<title><?= $REX['SERVERNAME'].' | '.htmlspecialchars($this->getValue("name")); ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

	<link rel="stylesheet" type="text/css" href="<?php echo $REX['HTDOCS_PATH'] ?>files/css/main.css" />
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>

<body>
	<div class="container">
		<!-- NAV -->
		REX_TEMPLATE[id="2"]

		<div id="content">
			<?= $this->getArticle(); ?>
		</div>
	</div>
</body>

</html>