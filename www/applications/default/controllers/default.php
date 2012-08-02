<?php
/**
 * Access from index.php:
 */


class Default_Controller extends ZP_Controller {
	
	public function __construct() {
		$this->app("default");
		$this->Templates = $this->core("Templates");
		$this->Templates->theme();

		#$this->Default_Model = $this->model("Default_Model");
	}
	
	public function index() {
		$vars["view"] = $this->view("home", TRUE);
		
		$this->render("content", $vars);
	}
	
	public function orgs() {
		$this->Templates->theme("opendatamxblog");
		$vars["view"] = $this->view("orgs", TRUE);
		
		$this->render("content", $vars);
	}

}
