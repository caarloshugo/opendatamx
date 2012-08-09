<?php if(segment(0) != "organizaciones") { ?>
<div id="right">	
	<div id="map-right">
		<span class="sectio-sidebar">
			Viernes 24 y S&aacute;bado 25 de Agosto de 2012<br /><br />
			
			Universidad de la comunicación, Zacatecas 120,<br />
			Colonia Roma, C.P. 06700, México D.F.
		</span><br /><br />
		
		<iframe class="map" width="250" height="215" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.mx/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=Universidad+de+la+Comunicacion,+Roma+Norte,+Cuauht%C3%A9moc,+Ciudad+de+M%C3%A9xico&amp;aq=0&amp;oq=universidad+de+la+comunicacion&amp;sll=19.418557,-99.168091&amp;sspn=0.02732,0.055275&amp;ie=UTF8&amp;hq=Universidad+de+la+Comunicacion,+Roma+Norte,+Cuauht%C3%A9moc,+Ciudad+de+M%C3%A9xico&amp;t=m&amp;ll=19.418557,-99.168091&amp;spn=0.008702,0.023389&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
		<br/><small><a href="https://maps.google.com.mx/maps?f=q&amp;source=embed&amp;hl=es&amp;geocode=&amp;q=Universidad+de+la+Comunicacion,+Roma+Norte,+Cuauht%C3%A9moc,+Ciudad+de+M%C3%A9xico&amp;aq=0&amp;oq=universidad+de+la+comunicacion&amp;sll=19.418557,-99.168091&amp;sspn=0.02732,0.055275&amp;ie=UTF8&amp;hq=Universidad+de+la+Comunicacion,+Roma+Norte,+Cuauht%C3%A9moc,+Ciudad+de+M%C3%A9xico&amp;t=m&amp;ll=19.418557,-99.168091&amp;spn=0.008702,0.023389&amp;z=15&amp;iwloc=A" style="color:#0000FF;text-align:left">Ver mapa más grande</a></small>
	</div>
	
	<div class="clear"></div>

	<div id="tweets-right">
		<script charset="utf-8" src="http://widgets.twimg.com/j/2/widget.js"></script>
		<script>
		new TWTR.Widget({
		  version: 2,
		  type: 'search',
		  search: 'OpenDataMX',
		  interval: 30000,
		  title: 'OpenDataMX',
		  subject: 'Abriendo el gobierno un bit a la vez',
		  width: 250,
		  height: 300,
		  theme: {
			shell: {
			  background: '#82d31f',
			  color: '#ffffff'
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
	
	<div class="clear"></div>
	
	<div id="tag_holder">			
		<a href="<?php print get('webURL'); ?>/blog/tag/opendatamx-2011" class="tag">OpenDataMX 2011</a>
		<!-- <a href="<?php print get('webURL'); ?>/blog/tag/opendatamx-americalatina-2011-mexico" class="tag">OpenDataMx Am&eacute;rica Latina 2011 M&eacute;xico</a> -->
		<!-- <a href="<?php print get('webURL'); ?>/blog/tag/proyectos-hktn-infancia-2012" class="tag">Proyectos HKTN Infancia 2012</a> -->
		<!-- <a href="<?php print get('webURL'); ?>/blog/tag/hackaton-por-la-infancia-2012" class="tag">Hackat&oacute;n por la Infancia 2012</a> -->
		<!-- <a href="<?php print get('webURL'); ?>/blog/tag/necesidades-sociales" class="tag">Necesidades Sociales</a> -->
		<!-- <a href="<?php print get('webURL'); ?>/blog/tag/datasets-infancia-2012" class="tag">Datasets Infancia 2012</a> -->
		<a href="<?php print get('webURL'); ?>/blog/tag/-que-es-opendata" class="tag">&iquest;Qu&eacute; es OpenData?</a>
	</div>
</div>
<?php } else { ?>
	<style>
		#content { width:1200px !important; }
	</style>
<?php } ?>
