<button type="button" id="navbar-toggle" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	<span class="sr-only">Toggle navigation</span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
</button>
<nav id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
		<?php
		$PATH = explode("|",$this->getValue("path").$this->getValue("article_id")."|");

		foreach (OOCategory::getRootCategories(true) as $category) {
			if ($category->hasTemplate()) {
				$active = $category->getId() == $PATH[1] ? ' active' : '';

				echo '<li role="presentation" class="'. $active .'">';
				echo '	'. $category->toLink('');
				echo '</li>';
			}
		}
		?>
	</ul>
</nav>