<nav>
	<ul class="nav nav-pills">
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