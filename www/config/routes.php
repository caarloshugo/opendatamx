<?php
/**
 * Access from index.php:
 */
if(!defined("_access")) {
	die("Error: You don't have permission to access here...");
}

$routes = array(
	0 => array(
			"pattern"	  => "/^blog^/",
			"application" => "blog",
			"controller"  => "blog",
			"method"	  => "index",
			"params"	  => array()
		),
	1 => array(
			"pattern"	  => "/^organizaciones/",
			"application" => "default",
			"controller"  => "default",
			"method"	  => "orgs",
			"params"	  => array()
		),
);
