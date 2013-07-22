package js.bootstrap;

typedef TooltipOptions = {
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Tooltip {

	public static inline function tooltip( j : js.JQuery , ?opts:TooltipOptions = null ) : js.JQuery
		return untyped j.tooltip( opts );

	public static inline function tooltipToggle( j : js.JQuery ) : js.JQuery
		return untyped j.tooltip( "toggle" );

	public static inline function tooltipShow( j : js.JQuery ) : js.JQuery
		return untyped j.tooltip( "show" );

	public static inline function tooltipHide( j : js.JQuery ) : js.JQuery
		return untyped j.tooltip( "hide" );

	#if !noEmbedBootstrap
	public static function __init__(){
		bootstrap.Lib.includeFile( "js/bootstrap-tooltip.js" );
	}
	#end

}