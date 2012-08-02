<?php if(!defined("_access")) die("Error: You don't have permission to access here..."); 		

header("Content-Type: application/rss+xml"); 
echo "<?xml version='1.0' encoding='utf-8'?>";
?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom"> 
  <channel> 
    <title><![CDATA[Codejobs - <?php echo __(_("Videos")) ?> ]]></title> 
    <link><![CDATA[<?php echo path()?>]]></link> 
    <description><![CDATA[RSS Codejobs]]></description>
    <language>es-es</language> 
    <copyright><![CDATA[Codejobs]]></copyright>
    <atom:link href="<?php echo path("bookmarks/rss"); ?>" rel="self" type="application/rss+xml" />
    

	<image>
		<url><?php echo path("www/lib/themes/newcodejobs/images/logo.png", TRUE)?> </url>

		<title>Codejobs - <?php echo __(_("Bookmarks")); ?></title>
		<link><?php echo path()?></link>
	</image>
	<?php 
	if(is_array($videos)) {	
	
	foreach($videos as $video) {

		 $URL = path("videos/video/". $video["ID_Video"]); 
	?>
			
		<item>
		<title>
		<![CDATA[<?php echo $video["Title"]; ?>]]>
		</title>
		<link>
		<![CDATA[<?php echo $URL; ?>]]>
		</link>
		<description>
		<![CDATA[<?php echo $video["Description"]; ?>]]>
		</description>
		<guid isPermaLink="true">
		<![CDATA[<?php echo $URL; ?>]]>
		</guid>
		<author>
		<![CDATA[codejobs]]>
		</author>
		<pubDate>
		<![CDATA[<?php echo howLong($video["Start_Date"]); ?>]]>
		</pubDate>
		</item>
	<?php
		}
	}
	 ?>	
  </channel>

</rss>