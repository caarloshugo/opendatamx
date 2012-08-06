CodeMirror.modeURL = URL + "/zan/vendors/js/codemirror/mode/%N.js";

$('textarea[name="code"]').each(function() {
    var editor = CodeMirror.fromTextArea(this, {
        lineNumbers: true,
        matchBrackets: true,
        readOnly: "nocursor"
    });

    if (syntax[$(this).dataset("syntax")].Filename.length > 0) {
        CodeMirror.autoLoadMode(editor, syntax[$(this).dataset("syntax")].Filename);
    }
    editor.setOption("mode", syntax[$(this).dataset("syntax")].MIME);
});