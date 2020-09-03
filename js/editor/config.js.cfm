<cfsilent><cfscript>
	setting showDebugOutput = false;
	sid = StructKeyExists(session, 'siteid') ? session.siteid : 'default';
	$ = application.serviceFactory.getBean('MuraScope').init(sid);
	renderer = $.getContentRenderer();
	cfcontent(type='text/javascript', reset=true);
</cfscript></cfsilent>
/*
	Copyright (c) 2003-2020, CKSource - Frederico Knabben. All rights reserved.
	For licensing, see LICENSE.html or https://ckeditor.com/license

	The CKEditor Developer's Guide can be found at:
	http://docs.ckeditor.com/#!/guide

	Dev Note: Add customizations or override editor config settings below.
*/

if ( 'CKEDITOR' in window) {

	CKEDITOR.editorConfig = function( config ) {

		// Example of how to customize one of the available toolbars (Default, Summary, and QuickEdit)
		// Documentation can be found at: http://docs.ckeditor.com

		//config.toolbar_Default = [
		//  {name:'group1',items:['Bold','Italic','Underline']}
		//];

		// Other misc. configuration examples

		//config.language = 'fr';
		//config.uiColor = '#AADC6E';
		//config.enterMode = CKEDITOR.ENTER_BR;
		//config.shiftEnterMode = CKEDITOR.ENTER_BR;
		//config.ProtectedSource.Add( /<br[\s\S]*?\/>/g ) ;   // BR Tags
		//config.ignoreEmptyParagraph = true;
	};
}
