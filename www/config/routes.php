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
	2 => array(
			"pattern"	  => "/^aviso/",
			"application" => "default",
			"controller"  => "default",
			"method"	  => "aviso",
			"params"	  => array()
		),
	3 => array(
			"pattern"	  => "/^datasets/",
			"application" => "default",
			"controller"  => "default",
			"method"	  => "datasets",
			"params"	  => array()
		),
	4 => array(
			"pattern"	  => "/^proyectos/",
			"application" => "default",
			"controller"  => "default",
			"method"	  => "proyectos",
			"params"	  => array()
		)
);
