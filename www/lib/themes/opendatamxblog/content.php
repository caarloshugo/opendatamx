	<div id="content">
		<?php $this->load(isset($view) ? $view : NULL, TRUE); ?>
	</div>

	<?php if(segment(0) == "blog" and segment(1) != "tag") { ?>
		</div>
	<?php } ?>
