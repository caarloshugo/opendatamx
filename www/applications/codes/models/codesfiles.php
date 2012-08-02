<?php
/**
 * Access from index.php:
 */
if(!defined("_access")) {
	die("Error: You don't have permission to access here...");
}

class CodesFiles_Model extends ZP_Model
{
	public function __construct() {
		$this->Db = $this->db();
		$this->table  = "codes_files";
	}
        
        public function getByCode($code, $limit = NULL) {
            return $this->Db->findBy("ID_Code", $code, $this->table, NULL, NULL, "ID_File ASC", $limit);
        }        
        
        public function getCodeOnly($code) {
            $data = $this->Db->findBy("ID_Code", $code, $this->table, "Code", NULL, "ID_File ASC", 1);
            
            if ($data) {
                return $data[0]["Code"];
            } else {
                return FALSE;
            }
        }  
}