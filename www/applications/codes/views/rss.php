<?php if(!defined("_access")) die("Error: You don't have permission to access here..."); 		

header("Content-Type: application/rss+xml"); 
echo "<?xml version='1.0' encoding='utf-8'?>";
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom"> 
  <channel> 
    <title><![CDATA[Codejobs - <?php echo __(_("Codes")) ?> ]]></title> 
    <link><![CDATA[<?php echo path()?>]]></link> 
    <description><![CDATA[RSS Codejobs]]></description>
    <language><?php echo whichLanguage(FALSE); ?></language> 
    <copyright><![CDATA[Codejobs]]></copyright>
    <atom:link href="<?php echo path("codes/rss"); ?>" rel="self" type="application/rss+xml" />
    

	<image>
		<url> <?php echo path("www/lib/themes/newcodejobs/images/logo.png", TRUE)?></url>

		<title>Codejobs - <?php echo __(_("Codes")); ?></title>
		<link><?php echo path()?></link>
	</image>
	<?php 
	if(is_array($codes)) {	
	
	foreach($codes as $code) {

		
	?>
			
		<item>
		<title>
		<![CDATA[<?php echo $code["Title"]; ?>]]>
		</title>
		<link>
		<![CDATA[<?php echo path("codes/" . $code["ID_Code"] . "/" . $code["Title"]); ?>]]>
		</link>
		<description>
		<![CDATA[<?php echo nl2br(htmlentities(decode(linesWrap($code["Code"])))); ?>]]>
		</description>
		<guid isPermaLink="true">
		<![CDATA[]]>
		</guid>
		<author>
		<![CDATA[<?php echo $code["Author"]; ?>]]>
		</author>
		<pubDate>
		<![CDATA[<?php echo $code["Start_Date"]; ?>]]>
		</pubDate>
		</item>
	<?php
		}
	}
	 ?>	
  </channel>

</rss>