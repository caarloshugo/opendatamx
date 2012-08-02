<?php
 
// This is a simplified example, which doesn't cover security of uploaded images. 
// This example just demonstrate the logic behind the process. 
 
 
// files storage folder
$dir = '/home/web/sitecom/images/';
 
$_FILES['file']['type'] = strtolower($_FILES['file']['type']);
 
if($_FILES['file']['type'] == 'image/png' or $_FILES['file']['type'] == 'image/jpg' or $_FILES['file']['type'] == 'image/gif' or $_FILES['file']['type'] == 'image/jpeg'or $_FILES['file']['type'] == 'image/pjpeg') {	
    // setting file's mysterious name
    $filename = md5(date('YmdHis')).'.jpg';
    $file = $dir . $filename;
    die(var_dump($_FILES));
    // copying
    copy($_FILES['file']['tmp_name'], $file);

    // displaying file    
	$array = array(
		'filelink' => '/images/'.$filename
	);
	
	echo stripslashes(json_encode($array));   
    
}
 
?>