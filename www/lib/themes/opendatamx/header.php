<!DOCTYPE html>
<html lang="<?php print get("webLang"); ?>">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title><?php print $this->getTitle(); ?></title>
		<link href="<?php print $this->themePath; ?>/css/style.css" rel="stylesheet">
		<link rel="image_src" href="<?php print $this->themePath; ?>/css/images/logo-opendata.png" />
		<link rel="image_src" href="<?php print $this->themePath; ?>/css/images/logo-opendata.png">
		<?php print $this->getCSS(); ?>
		<script language="javascript" src ="<?php print $this->themePath; ?>/js/jquery.js"></script>
		<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
			<!--[if lt IE 9]>
			  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<![endif]-->
		<!-- Le styles -->
	</head>

	<body>
		<div id="container">
			<div id="header">
				<div id="h-information">
					<div id="h-title">
						<span>OpenDataMX</span>
					</div>
					
					<div class="clear"></div>
					
					<div id="h-twitter">
						<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
						<script>
							new TWTR.Widget({
							  version: 2,
							  type: 'search',
							  search: 'OpenDataMX',
							  interval: 30000,
							  title: '@OpenDataMX',
							  subject: 'Abriendo el gobierno un bit a la vez',
							  width: 'auto',
							  height: 'auto',
							  theme: {
								shell: {
								  background: '#2f2f2f',
								  color: '#75bc1e'
								},
								tweets: {
								  background: '#ffffff',
								  color: '#444444',
								  links: '#1985b5'
								}
							  },
							  features: {
								scrollbar: false,
								loop: true,
								live: true,
								behavior: 'default'
							  }
							}).render().start();
						</script>
					</div>
					
					<div id="h-extract">
						<span>OpenDataMx es un Hackat&oacute;n de datos abiertos p&uacute;blicos donde en 36 horas
							se desarrollar&aacute;n soluciones tecnol&oacute;gicas creativas para resolver las
							diversas problem&aacute;ticas de la sociedad civil.
						</span>
					</div>
					
					
					<div id="h-social-section">
						<a href="https://twitter.com/share" data-url="http://opendata.mx" data-text="OpenDataMX" class="twitter-share-button logo-twitter" data-via="OpenDataMX" data-lang="es" data-related="OpenDataMX" data-count="none" data-hashtags="OpenDataMX">Twittear</a>
						<div class="fb-like logo-facebook"  data-href="http://opendata.mx" data-send="false" data-layout="button_count" data-width="45" data-show-faces="true" data-font="arial"></div>
						<div class="logo-plus"><g:plusone annotation="none"></g:plusone></div>
					</div>

					<div id="h-buttons">
						<div class="buttons orgsbtn">
							<a href="<?php print get('webURL'); ?>/organizaciones" title="Organizaciones de la sociedad civil"><span class="bold">Organizaciones de la sociedad civil</span> - clic aqu&iacute;</a>
						</div>
						<div class="buttons hackrsbtn">
							<a href="#registro" title="Registro Hackers"><span class="bold">Registro Participantes</span></a>
						</div>
					</div>
				</div>
				
				<div class="clear"></div>
				
				<div id="h-menu">
					<div id="logo-menu"><a href="#opendata"><img src="<?php print $this->themePath; ?>/css/images/logo-opendata.png" title="OpenDataMX"/></a></div>
					<ul id="menu-ul">
						<li><a href="#programa" title="Programa">Programa</a></li>
						<li>
							<a href="">Registro</a>
							<ul>
								<li><a href="<?php print get('webURL'); ?>/organizaciones">Registro Organizaciones</a></li>
								<li class="border-li"><a href="#registro">Registro Participantes</a></li>
							</ul>
						</li>
						<li><a href="#necesidades" title="Ejemplos de retos">Retos</a></li>
						<li><a href="#data-sets" title="Datasets">Datasets</a></li>
						<li><a href="<?php print get('webURL'); ?>/blog" title="OpenData Blog">Blog</a></li>
					</ul>
				</div>
				
				<div class="clear"></div>
				
				<div class="arrow_box"></div>
			</div>
