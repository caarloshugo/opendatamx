<?php
/**
 * Access from index.php:
 */
if(!defined("_access")) {
	die("Error: You don't have permission to access here...");
}

class Codes_Model extends ZP_Model {
	
	public function __construct() {
		$this->Db = $this->db();
		
		$this->table  = "codes";
		$this->fields = "ID_Code, Title, Slug, Languages, Author, Start_Date, Text_Date, Views, Likes, Dislikes, Language, Situation";

		$this->Data = $this->core("Data");
		$this->Data->table("codes");
                
                $this->language = whichLanguage();
                
		$this->helper("alerts");
	}
	
	public function cpanel($action, $limit = NULL, $order = "ID_Link DESC", $search = NULL, $field = NULL, $trash = FALSE) {		
		if($action === "edit" or $action === "save") {
			$validation = $this->editOrSave();
			
			if($validation) {
				return $validation;
			}
		}
		
		if($action === "all") {
			return $this->all($trash, $order, $limit);
		} elseif($action === "edit") {
			return $this->edit();															
		} elseif($action === "save") {
			return $this->save();
		} elseif($action === "search") {
			return $this->search($search, $field);
		}
	}
	
	private function all($trash, $order, $limit) {
		$fields = "ID_Code, Title, Slug, Author, Text_Date, Views, Likes, Dislikes, Language, Reported, Situation";

		if(!$trash) {			
			return (SESSION("ZanUserPrivilegeID") === 1) ? $this->Db->findBySQL("Situation != 'Deleted'", $this->table, $fields, NULL, $order, $limit) : $this->Db->findBySQL("ID_User = '". SESSION("ZanUserID") ."' AND Situation != 'Deleted'", $this->table, $fields, NULL, $order, $limit);
		} else {	
			return (SESSION("ZanUserPrivilegeID") === 1) ? $this->Db->findBy("Situation", "Deleted", $this->table, $fields, NULL, $order, $limit) 	   : $this->Db->findBySQL("ID_User = '". SESSION("ZanUserID") ."' AND Situation = 'Deleted'", $this->table, $fields, NULL, $order, $limit);	
		}				
	}
	
	private function editOrSave() {
		$validations = array(
			"exists"  => array(
				"URL" => POST("URL")
			),
			"title" => "required"
		);

		$this->helper("time");

		$data = array(
			"ID_User" 	 => SESSION("ZanUserID"),
			"Author"  	 => SESSION("ZanUser"),
			"Slug"    	 => slug(POST("title", "clean")),
                        "Languages"      => $this->implode(POST("syntaxname", "clean")),
			"Start_Date"     => now(4),
                        "Text_Date"      => now(2)
		);
                
		$this->Data->ignore(array("file", "programming", "syntax", "syntaxname", "name", "code"));
		$this->data = $this->Data->proccess($data, $validations);
		$this->id = POST("ID");
                
                if(isset($this->data["error"])) {
			return $this->data["error"];
		}
	}
	
	private function save() {
		if (FALSE !== ($ID = $this->Db->insert($this->table, $this->data))) {
                        $this->data = $this->proccessFiles($ID);
                        
                        if (isset($this->data["error"])) {
                            $this->Db->delete($ID, $this->table);
                            return $this->data["error"];
                        }
                        
                        if ($this->Db->insertBatch("codes_files", $this->data)) {
                            return getAlert(__("The link has been saved correctly"), "success");	
                        }
		}
		
		return getAlert(__("Insert error"));
	}
	
	private function edit() {
		if ($this->Db->update($this->table, $this->data, POST("ID"))) {
                    $this->data = $this->proccessFiles(POST("ID"));
                    
                    if (isset($this->data["error"])) {
                        return $this->data["error"];
                    }
                    
                    $filesDB = $this->getFilesBy(POST("ID"));
                    $filesPOST = POST("file");
                    
                    foreach ($filesPOST as $iFile => $fileID) {
                        if ((int)$fileID > 0) {
                            $this->Db->update("codes_files", $this->data[$iFile], $fileID);
                            array_splice($filesDB, array_search($fileID, $filesDB), 1);
                        } else { 
                            $this->Db->insert("codes_files", $this->data[$iFile]);
                        }
                    }
                    
                    if (count($filesDB) > 0) {
                        foreach ($filesDB as $fileDB) {
                            $this->Db->delete($fileDB, "codes_files");
                        }
                    }
                    
                    return getAlert(__("The link has been edit correctly"), "success");
                }
                
                return getAlert(__("Update error"));
	}
        
        public function getRSS() {	
		return $this->Db->findBySQL("Language = '$this->language' AND Situation = 'Active'", $this->table, $this->fields, NULL, "ID_Code DESC");
	}
        
        private function proccessFiles($ID) {
            $files      = POST("file");
            $syntax     = POST("syntax");
            $name       = POST("name");
            $code       = POST("code");
            $total      = count($files);
            
            if ($total == 0) return array("error" => getAlert("Files are required"));
            if (count(array_filter($syntax)) != $total) return array("error" => getAlert("Syntax is required"));
            if (count(array_filter($name)) != $total) return array("error" => getAlert("Filename is required"));
            if (count(array_filter($code)) != $total) return array("error" => getAlert("Code is required"));
            
            $data = array();
            
            for ($i = 0; $i < $total; $i++) {
                $data[] = array(
                    "ID_Code"   => $ID,
                    "Name"      => decode(addslashes($name[$i])),
                    "ID_Syntax" => decode(addslashes($syntax[$i])),
                    "Code"      => decode(addslashes($code[$i]))
                );
            }
            
            return $data;
        }
        
        private function getFilesBy($ID) {
            $this->Db->select("ID_File");
            $this->Db->from("codes_files");
            $this->Db->where("ID_Code = '$ID'");
            
            $IDs = array();
            foreach ($this->Db->get() as $value) $IDs[] = $value["ID_File"];
            return $IDs;
        }
        
        private function search($search, $field) {
		if($search and $field) {
			return ($field === "ID") ? $this->Db->find($search, $this->table) : $this->Db->findBySQL("$field LIKE '%$search%'", $this->table);	      
		} else {
			return FALSE;
		}
	}
        
	public function count($tag = NULL) {
		return (is_null($tag)) ? $this->Db->countBySQL("Situation = 'Active'", $this->table) : $this->Db->countBySQL("Title LIKE '%$tag%' OR Description LIKE '%$tag%' OR Tags LIKE '%$tag%' AND Situation = 'Active'", $this->table);
	}

	public function getByLanguage($tag, $limit) {
		return $this->Db->findBySQL("Title LIKE '%$tag%' OR Languages LIKE '%$tag%' AND Situation = 'Active'", $this->table, $this->fields, NULL, "ID_Code DESC", $limit);
	}
	
	public function getByID($ID) {
		return $this->Db->find($ID, $this->table, $this->fields);
	}
	
	public function getAll($limit) {		
		$data = $this->Db->findAll($this->table, $this->fields, NULL, "ID_Code DESC", $limit);
		
		return $data;
	}

	public function updateViews($codeID) {
		return $this->Db->updateBySQL($this->table, "Views = (Views) + 1 WHERE ID_Code = '$codeID'");
	}

        public function setReport($ID) {
            if ($this->Db->find($ID, "codes")) {
                $this->Db->updateBySQL("codes", "Reported = (Reported) + 1 WHERE ID_Code = '$ID'");

                showAlert(__(_("Thanks for reporting this code")), path("codes/go/$ID"));
            } else {
                redirect();
            }
        }
        
        private function implode($array = array(), $glue = ", ") {
            $array = array_filter(array_unique($array));
            sort($array);

            return implode($glue, $array);
        }
}