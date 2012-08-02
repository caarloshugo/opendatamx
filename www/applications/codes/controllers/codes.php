<?php
/**
 * Access from index.php:
 */
if(!defined("_access")) {
	die("Error: You don't have permission to access here...");
}

class Codes_Controller extends ZP_Controller {
	
	public function __construct() {		
		$this->Templates = $this->core("Templates");
		$this->Cache     = $this->core("Cache");
		
		$this->application = $this->app("codes");
		
		$this->Templates->theme();

		$this->config("codes");
		
		$this->Codes_Model = $this->model("Codes_Model");
                $this->CodesFiles_Model = $this->model("CodesFiles_Model");

		$this->helper("pagination");
	}
	
	public function index($codeID = 0) {
		if($codeID > 0) {
			$this->go($codeID);
		} else {
			$this->getCodes();
		}
	}

	public function like($ID) {
		$this->Users_Model = $this->model("Users_Model");

		$this->Users_Model->setLike($ID, "codes", 17);
	}

	public function dislike($ID) {
		$this->Users_Model = $this->model("Users_Model");

		$this->Users_Model->setDislike($ID, "codes", 17);
	}

	public function report($ID) {
		$this->Codes_Model->setReport($ID);
	}	

	public function language($language) {
		$this->title(__("Codes"));
		
                $this->CSS("codes", $this->application);
		$this->CSS("pagination");
		
                $limit = $this->limit($language);

		$data = $this->Cache->data("tag-$language-$limit", "codes", $this->Codes_Model, "getByLanguage", array($language, $limit));

		if($data) {
			$this->helper("time");
                        $this->helper("codes", $this->application);
                        
                        foreach ($data as $pos => $code) {
                            $file = $this->CodesFiles_Model->getByCode($code["ID_Code"], 1);
                            if ($file) {
                                $data[$pos]["File"] = $file[0];
                            } else {
                                redirect();
                                exit;
                            }
                        }
			$vars["codes"]  	= $data;
			$vars["pagination"] = $this->pagination;
			$vars["view"]       = $this->view("codes", TRUE);
			
			$this->render("content", $vars);
		} else {
			redirect();
		}
	}

	public function go($codeID = 0) {
                $this->CSS("codes", $this->application);
		$this->CSS("pagination");

		$data = $this->Cache->data("code-$codeID", "codes", $this->Codes_Model, "getByID", array($codeID));

		if($data) {
			$this->helper("time");
                        $this->helper("codes", $this->application);
                        
                        $files = $this->CodesFiles_Model->getByCode($data[0]["ID_Code"]);
                        if ($files) {
                            $data[0]["Files"] = $files;
                            $this->title(__(_("Codes")) ." - ". $data[0]["Title"]);
			
                            $this->Codes_Model->updateViews($codeID);

                            $vars["code"] 	= $data[0];
                            $vars["view"]   = $this->view("code", TRUE);

                            $this->render("content", $vars);
                        } else {
                            redirect();
                        }
		} else {
			redirect();
		}
	}

	public function getCodes() {
		$this->title(__(_("Codes")));
                
                $this->CSS("codes", $this->application);
		$this->CSS("pagination");
                
		$limit = $this->limit();
		
		$data = $this->Cache->data("codes-$limit", "codes", $this->Codes_Model, "getAll", array($limit));

		$this->helper("time");
                $this->helper("codes", $this->application);
		
		if($data) {	
                    foreach ($data as $pos => $code) {
                        $content = $this->CodesFiles_Model->getByCode($code["ID_Code"], 1);
                        if ($content) {
                            $data[$pos]["File"] = $content[0];
                        } else {
                            redirect();
                            exit;
                        }
                    }
			$vars["codes"]  	= $data;
			$vars["pagination"] = $this->pagination;
			$vars["view"]       = $this->view("codes", TRUE);
			
			$this->render("content", $vars);
		} else {
			redirect();	
		} 
	}

	public function rss() {
		$this->helper("time");

		$data = $this->Codes_Model->getRSS();
		
		if($data) {
                        $this->helper("codes", $this->application);
                        
                        foreach ($data as $pos => $code) {
                            $content = $this->CodesFiles_Model->getCodeOnly($code["ID_Code"]);
                            if ($content) {
                                $data[$pos]["Code"] = $content;
                            } else {
                                redirect();
                                exit;
                            }
                        }
			$vars["codes"]= $data;	

			$this->view("rss", $vars, $this->application);
		} else {
			redirect();
		}

	}
        
        public function add() {
		isConnected();

		if(POST("save")) {
			$vars["alert"] = $this->Codes_Model->add();
		} 

		$this->CSS("forms", "cpanel");

		$this->helper(array("html", "forms"));

		$vars["view"] = $this->view("new", TRUE);

		$this->render("content", $vars);
	}
        
	private function limit($tag = NULL) {
		$count = $this->Codes_Model->count($tag);	
		
		if(is_null($tag)) {
			$start = (segment(1, isLang()) === "page" and segment(2, isLang()) > 0) ? (segment(2, isLang()) * _maxLimit) - _maxLimit : 0;
			$URL   = path("codes/page/");
		} else {
			$start = (segment(3, isLang()) === "page" and segment(4, isLang()) > 0) ? (segment(4, isLang()) * _maxLimit) - _maxLimit : 0;
			$URL   = path("codes/tag/$tag/page/");
		}	

		$limit = $start .", ". _maxLimit;
		
		$this->pagination = ($count > _maxLimit) ? paginate($count, _maxLimit, $start, $URL) : NULL;

		return $limit;
	}
        
}