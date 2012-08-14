		<div id="footer">
			<div id="logos">
				<a href="http://fundar.org.mx" title="Fundar" class="logo">
					<img src="<?php print $this->themePath; ?>/css/images/logo-fundar.png" title="Fundar">
				</a>
				
				<a href="http://colectivoporlatransparencia.org" title="Colectivo por la transparencia" class="logo">
					<img src="<?php print $this->themePath; ?>/css/images/logo-colectivo.png" title="Colectivo por la transparencia">
				</a>
				
				<a href="#socialtic" title="SocialTIC" class="logo">
					<img src="<?php print $this->themePath; ?>/css/images/logo300_standard_blanco.png" title="SocialTIC">
				</a>
				
				<a href="http://www.uc.edu.mx" title="Universidad de la comunicacion" class="logo uni-logo2">
					<img src="<?php print $this->themePath; ?>/css/images/logo-universidad.png" title="Universidad de la comunicacion">
				</a>
			</div>
			<span class="copy">&copy;OpendataMX</span>
			<span class="aviso"><a href="<?php print get('webURL'); ?>/aviso" title="Aviso de privacidad">Aviso de privacidad</a></span>
		</div>
	</div>
	<script language="javascript" src ="<?php print $this->themePath; ?>/js/social.js"></script>
	<script language="javascript" src ="<?php print $this->themePath; ?>/js/jquery.roundabout.min.js"></script>
	<script>
		jQuery(document).ready(function() {
			jQuery('.carrusel').roundabout();
		});
	</script>
	
	<div id='IrArriba'>
		<a href='#Arriba'><span/></a>
	</div>
	<script type='text/javascript'>
		//<![CDATA[
		// Botón para Ir Arriba
		jQuery.noConflict();
		jQuery(document).ready(function() {
		jQuery("#IrArriba").hide();
		jQuery(function () {
		jQuery(window).scroll(function () {
		if (jQuery(this).scrollTop() > 200) {
		jQuery('#IrArriba').fadeIn();
		} else {
		jQuery('#IrArriba').fadeOut();
		}
		});
		jQuery('#IrArriba a').click(function () {
		jQuery('body,html').animate({
		scrollTop: 0
		}, 800);
		return false;
		});
		});

		});
		//]]>
	</script>
	</body>
</html>
