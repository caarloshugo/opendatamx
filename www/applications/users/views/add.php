<?php 
	if(!defined("_access")) {
		die("Error: You don't have permission to access here..."); 
	}
	
	$ID        = isset($data) ? recoverPOST("ID", $data[0]["ID_Post"]) 			 : 0;
	$username  = isset($data) ? recoverPOST("username", $data[0]["Username"]) 	 : recoverPOST("username");
	$privilege = isset($data) ? recoverPOST("privilege", $data[0]["ID_Privilege"])  : recoverPOST("privilege"); 
	$email     = isset($data) ? recoverPOST("email", $data[0]["Email"]) 		 : recoverPOST("email");
	$situation = isset($data) ? recoverPOST("situation", $data[0]["Situation"])  : recoverPOST("situation");				
	$pwd   	   = isset($data) ? recoverPOST("pwd", $data[0]["Pwd"])				 : recoverPOST("pwd");
	$edit      = isset($data) ? TRUE											 : FALSE;
	$action	   = isset($data) ? "edit"											 : "save";
	$href 	   = isset($data) ? path(whichApplication() ."/cpanel/$action/$ID/") : path(whichApplication() ."/cpanel/add");

	echo div("add-form", "class");
		echo formOpen($href, "form-add", "form-add");
			echo p(__(_(ucfirst(whichApplication()))), "resalt");
			
			echo isset($alert) ? $alert : NULL;

			echo formInput(array("name" => "username", "class" => "input required", "field" => __(_("Username")), "p" => TRUE, "value" => $username));
			
			echo formInput(array("name" => "pwd", "type" => "password", "class" => "input required", "field" => __(_("Password")), "p" => TRUE, "value" => $pwd));

			echo formInput(array("name" => "pwd2", "type" => "hidden", "value" => $pwd));
	
			echo formInput(array("name" => "email", "class" => "input required", "field" => __(_("Email")), "p" => TRUE, "value" => $email));
			
			$i = 0;
			foreach($privileges as $value) { 
				$options[$i]["value"]    = $value["ID_Privilege"];
				$options[$i]["option"]   = $value["Privilege"];
				$options[$i]["selected"] = ($value["ID_Privilege"] === $privilege) ? TRUE : FALSE;

				$i++;
			} 
			
			//die(var_dump($options));
			//echo formSelect(array("name" => "privilege", "class" => "select", "p" => TRUE, "field" => __(_("Privilege")), $options));
			
			echo formSelect(array(
				"name" 	=> "privilege", 
				"class" => "select", 
				"p" 	=> TRUE, 
				"field" => __(_("Privilege"))), 
				$options
			);	
			
			$options = array(
				0 => array("value" => "Active",   "option" => __(_("Active")),   "selected" => ($situation === "Active")   ? TRUE : FALSE),
				1 => array("value" => "Inactive", "option" => __(_("Inactive")), "selected" => ($situation === "Inactive") ? TRUE : FALSE)
			);

			//echo formSelect(array("name" => "situation", "class" => "select", "p" => TRUE, "field" => __(_("Situation")), $options));
			
			echo formSelect(array(
				"name" 	=> "situation", 
				"class" => "select", 
				"p" 	=> TRUE, 
				"field" => __(_("Situation"))), 
				$options
			);	
			
			echo formSave($action);
			
			echo formInput(array("name" => "ID", "type" => "hidden", "value" => $ID));
		echo formClose();
	echo div(FALSE);
