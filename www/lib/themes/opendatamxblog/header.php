<?php if(!defined("_access")) die("Error: You don't have permission to access here..."); ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<title><?php echo $this->getTitle(); ?></title>
	<link rel="stylesheet" href="<?php echo $this->themePath; ?>/css/blog.css" type="text/css">
	<script type="text/javascript" src="<?php echo $this->themePath; ?>/js/jquery.js"></script>
	<?php 
		echo $this->getCSS(); 
	 	
	 	echo $this->js("jquery", NULL, TRUE); 
                
                if (defined("_codemirror")) {
                    print $this->js("codemirror", NULL, TRUE);
                }
                
	 ?>
	 
	<script type="text/javascript">
		var PATH = "<?php print path(); ?>";
		
		var URL  = "<?php print get('webURL'); ?>";
	</script>
</head>

<body>	
	<div id="container">
		<div id="header">
			<div id="h-menu">
				<div id="logo-menu"><a href="<?php print get('webURL'); ?>"><img src="<?php print $this->themePath; ?>/css/images/logo-opendata.png" title="OpenDataMX"/></a></div>
				<ul id="menu-ul">
					<li><a href="<?php print get('webURL'); ?>/foro" title="Foro">Foro</a></li>
					<li><a href="<?php print get('webURL'); ?>/wiki" title="Wiki">Wiki</a></li>
					<li><a href="<?php print get('webURL'); ?>/blog" title="OpenData Blog">Blog</a></li>
				</ul>
			</div>
			
			<div class="clear"></div>
			
			<div class="arrow_box"></div>
		</div>
