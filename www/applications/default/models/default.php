<?php
/**
 * Access from index.php:
 */
if(!defined("_access")) {
	die("Error: You don't have permission to access here...");
}

class Default_Model extends ZP_Model {
	
	public function __construct() {
		$this->Db = $this->db();
		
		$this->helpers();
	
		$this->table = "wp_posts";
	}

	public function import() {
		$query = "select post_title, post_date, post_content from wp_posts where post_status='publish' and post_title<>'' ORDER BY ID ASC";
		$data = $this->Db->query($query);
		
		foreach($data as $post) {
			$fields = "ID_User, Title, Slug, Content, Author, Year, Month, Day, Start_Date, Text_Date";
			
			$values = "'". SESSION("ZanUserID") . "'" . "," . "'". utf8_decode($post["post_title"]) . "'" . "," . "'" . slug($post["post_title"]) . "'" . "," . "'" .$post["post_content"] . "'";
			$values .= "," . "'" . SESSION("ZanUser") . "'" . "," . "'" . date("Y") . "'" . "," . "'". date("m") . "'" . "," . "'" . date("d") . "'" . "," . now(4) . "," . "'" . now(2) ."'";
			$query = "insert into muu_blog ($fields) values ($values)";
			
			 
			$data  = $this->Db->query($query);
			
		
		}
		
		/*
		"ID_User"      => SESSION("ZanUserID"),
			"Slug"         => slug(POST("title", "clean")),
			"Content"      => POST("content", "clean"),
			"Author"       => SESSION("ZanUser"),
			"Year"	       => date("Y"),
			"Month"	       => date("m"),
			"Day"	       => date("d"),
			"Image_Small"  => isset($this->image["small"])  ? $this->image["small"]  : NULL,
			"Image_Medium" => isset($this->image["medium"]) ? $this->image["medium"] : NULL,
			"Pwd"	       => (POST("pwd")) ? POST("pwd", "encrypt") : NULL,
			"Start_Date"   => now(4),
			"Text_Date"    => now(2),
			"Tags"		   => POST("tags")
		*/
		
		____($data);
		return $data;
	}
	
}
