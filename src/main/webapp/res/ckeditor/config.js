/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	 config.language = 'zh-cn';
     config.height = 300;
     config.width = 'auto';
    config.toolbar = [
        { name: 'document', items: [ 'Source', 'Preview', 'Print', 'Templates' ] },
        { name: 'clipboard', items: [ 'Cut', 'Copy', '-', 'Undo', 'Redo' ] },
        { name: 'editing', items: [ 'Find', 'Replace' ] },
        { name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'CopyFormatting', 'RemoveFormat' ] },
        { name: 'colors', items: [ 'TextColor', 'BGColor','Image','Table', 'Smiley','Iframe','Link', 'Unlink', 'Anchor', 'HorizontalRule',  'SpecialChar', 'PageBreak','Maximize' ] },
        '/',
        { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
        { name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'CreateDiv', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'] }
    ];
};
