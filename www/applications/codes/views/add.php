<?php 
        if(!defined("_access")) {
		die("Error: You don't have permission to access here..."); 
	}
        
        $this->CSS("add", "codes", TRUE);
        
        $ID  	     = isset($data) ? recoverPOST("ID", $data[0]["ID_Code"]) 				: 0;
	$title       = isset($data) ? recoverPOST("title", $data[0]["Title"]) 				: recoverPOST("title");
	$language  	 = isset($data) ? recoverPOST("language", $data[0]["Language"])  	 	: recoverPOST("language");
	$situation   = isset($data) ? recoverPOST("situation", $data[0]["Situation"]) 		: recoverPOST("situation");
	$edit        = isset($data) ? TRUE 													: FALSE;
	$action	     = isset($data) ? "edit"												: "save";
	$href	     = isset($data) ? path(whichApplication() ."/cpanel/edit/") 			: path(whichApplication() ."/cpanel/add/");
	
        if (! ($files = isset($data) ? $data[0]["Files"] : FALSE)) {
            $files = recoverFiles();
        }
	
	echo tagHTML("div", array(
            "ng-controller" => "FileCtrl",
            "class"         => "add-form"
        ));
		echo formOpen($href, "form-add", "form-add");
			echo p(__(_(ucfirst(whichApplication()))), "resalt");
			
			echo isset($alert) ? $alert : NULL;

			echo formInput(array(	
				"name" 	=> "title", 
				"class" => "span10 required",
				"field" => __(_("Title")), 
				"p" 	=> TRUE, 
				"value" => $title,
                                "autofocus" => "autofocus"
			));
                        
                        echo span("field", "&raquo; " . __(_("Files")) . " ({{files.length}})");
                        
                        echo tagHTML("div", array(
                            "class"     => "well span10",
                            "ng-repeat" => "file in files"
                        ));
                            
                            echo formInput(array(	
                                "name"      => "file[]",
                                "type"      => "hidden",
                                "value"     => "{{file.idfile}}"
                            ));
                        
                            echo formSelect(array(
                                "name"          => "programming[]",
                                "id"            => "syntax{{\$index}}",
                                "class"         => "required",
                                "p"             => TRUE,
                                "field"         => __(_("Programming language")),
                                "ng-model"      => "language",
                                "ng-init"       => "language=languages[getLanguage(file.syntax)]",
                                "ng-options"    => "language.Name for language in languages",
                                "ng-change"     => "selectSyntax(\$index)"
                            ));
                            
                            echo formInput(array(	
                                "name"      => "syntax[]",
                                "type"      => "hidden",
                                "value"     => "{{language.ID_Syntax}}"
                            ));
                            
                            echo formInput(array(
                                "name"      => "syntaxname[]",
                                "type"      => "hidden",
                                "value"     => "{{language.Name}}"
                            ));
                            
                            echo formInput(array(	
                                "name"      => "name[]", 
                                "id"        => "name{{\$index}}", 
                                "class"     => "required", 
                                "field"     => __(_("Filename")), 
                                "p"         => TRUE,
                                "ng-model"  => "file.name",
                                "onBlur"    => "validateExtension({{\$index}}, '{{languages[getLanguage(language.ID_Syntax)].Extension}}')"
                            ));

                            echo formTextArea(array(	
                                "id"        => "code{{\$index}}", 
                                "name"      => "code[]",
                                "class"     => "required",
                                "style"     => "height: 200px;width:100%", 
                                "field"     => __(_("Code")), 
                                "p"         => TRUE, 
                                "value"     => "{{textCode(\$index)}}"
                            ));
                            
                            echo tagHTML("div", array(
                                "class" => "remove remove-{{\$index > 0}}"
                            ));
                            
                            echo tagHTML("a", array(
                                "class"     => "btn btn-danger",
                                "ng-click"  => "removeFile(\$index)"
                            ), __(_("Remove file")));
                            
                            echo tagHTML("div", FALSE);
                        echo tagHTML("div", FALSE);
                        
                        echo tagHTML("div", array(
                            "id"        => "add",
                            "class"     => "btn span10",
                            "ng-click"  => "addFile()"
                        ), __(_("Add another file")) . "...");

			echo formField(NULL, __(_("Language of the post")) ."<br />". getLanguagesInput($language, "language", "select"));
			
			$options = array(
				0 => array("value" => "Active",   "option" => __(_("Active")),   "selected" => ($situation === "Active")   ? TRUE : FALSE),
				1 => array("value" => "Inactive", "option" => __(_("Inactive")), "selected" => ($situation === "Inactive") ? TRUE : FALSE)
			);

			echo formSelect(array("name" => "situation", "class" => "required", "p" => TRUE, "field" => __(_("Situation"))), $options);
			
			echo formSave($action);
			
			echo formInput(array("name" => "ID", "type" => "hidden", "value" => $ID));
		echo formClose();
	echo tagHTML("div", FALSE);
?>
<script type="text/javascript">
CodeMirror.modeURL = URL + "/zan/vendors/js/codemirror/mode/%N.js";

function FileCtrl($scope) {
    $scope.files = [
<?php
for ($file = 0; $file < count($files); $file++) :
?>
        {
         idfile: "<?php print recoverPOST("idfile$file", $files[$file]["ID_File"]); ?>",
         name: "<?php print recoverPOST("name$file", $files[$file]["Name"]); ?>",
         syntax: <?php print recoverPOST("syntax$file", $files[$file]["ID_Syntax"]); ?>,
         code: "<?php print removeBreaklines(recoverPOST("code$file", $files[$file]["Code"]), "\\n"); ?>",
         editor: null
        } <?php print $file < (count($files) - 1) ? ',' : '';
endfor ;
?>
    ];
    
    $scope.textCode = function (index) {
        return $("<div/>").html($scope.files[index].code).text();
    };
    
    $scope.addFile = function () {
        var index = $scope.files.length;
        $scope.files.push({
            id: "", name: "", syntax: 1, code: "", editor: null
        });
        window.setTimeout(function () {
            $scope.files[index].editor = CodeMirror.fromTextArea($("#code" + index).get(0), {
                lineNumbers: true,
                matchBrackets: true,
                onFocus: new Function("$('.CodeMirror:eq(" + index + ")').addClass('CodeMirrorHover');"),
                onBlur: new Function("$('.CodeMirror:eq(" + index + ")').removeClass('CodeMirrorHover');")
            });
            
            $('html, body').animate({
                scrollTop: $("#name" + ($scope.files.length - 1)).parent().parent().offset().top - 10
            }, 1000, function () {
                $("#syntax" + ($scope.files.length - 1)).focus();
            });
        }, 0);
    };
    
    $scope.languages = <?php echo getSyntaxJSON(); ?>;
    
    $scope.getLanguage = function (syntax) {
        for (var i = 0; i < $scope.languages.length; i++) {
            if ($scope.languages[i].ID_Syntax == syntax) return i;
        }
        return 0;
    };
    
    $scope.selectSyntax = function (index) {
        if (this.language.Filename.length > 0) {
            CodeMirror.autoLoadMode(this.files[index].editor, this.language.Filename);
        }
        
        this.files[index].editor.setOption("mode", this.language.MIME);
        
        $("input[name='syntax[]']:eq(" + index + ")").val(this.language.ID_Syntax);
        $("input[name='syntaxname[]']:eq(" + index + ")").val(this.language.Name);
    };
    
    $scope.removeFile = function (index) {
        if (index > 0) {
            if (confirm("<?php print __(_("Do you want to remove this file?")); ?>")) {
                this.files.splice(index, 1);
            }
        }
    };
    
    $(window).load(function () {
        var codes = $("textarea[name='code[]']").each(function (index) {
            $scope.files[index].editor = CodeMirror.fromTextArea(this, {
                lineNumbers: true,
                matchBrackets: true,
                onFocus: new Function("$('.CodeMirror:eq(" + index + ")').addClass('CodeMirrorHover');"),
                onBlur: new Function("$('.CodeMirror:eq(" + index + ")').removeClass('CodeMirrorHover');")
            });
            
            var language = $scope.languages[$scope.getLanguage($scope.files[index].syntax)];
            if (language.Filename.length > 0) {
                CodeMirror.autoLoadMode($scope.files[index].editor, language.Filename);
            }
            $scope.files[index].editor.setOption("mode", language.MIME);
        });
        
    });
    
}

function validateExtension(index, ext) {
    var $name = $("#name" + index);
    if (ext.length > 0 && $name.val()) {
        if (! (new RegExp(".+" + ext + "$", "img")).test($name.val())) {
            $name.val($name.val() + "." + ext);
        }
    }
}
</script>