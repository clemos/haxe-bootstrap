package js.bootstrap;

typedef PopoverOptions = {
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?trigger 	: Dynamic,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Popover {
	public static inline function popover( j : js.JQuery , ?opts : PopoverOptions = null ) : js.JQuery {
		return untyped j.popover( opts );
	}

	public static inline function popoverToggle( j : js.JQuery ) : js.JQuery 
		return untyped j.popover( "toggle" )
		
	public static inline function popoverShow( j : js.JQuery ) : js.JQuery 
		return untyped j.popover( "show" )
	
	public static inline function popoverHide( j : js.JQuery ) : js.JQuery 
		return untyped j.popover( "hide" )
	

	#if !noEmbedBootstrap
	public static function __init__(){
		bootstrap.Lib.includeFile("js/bootstrap-tooltip.js");
		bootstrap.Lib.includeFile("js/bootstrap-popover.js");
	}
	#end
}