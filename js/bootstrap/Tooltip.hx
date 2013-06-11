package js.bootstrap;
  using js.bootstrap.Tooltip;

typedef TooltipOptions = {
	?animation 	: Bool,
	?placement 	: Dynamic, // or function...
	?selector 	: String,
	?title 		: Dynamic,
	?content 	: Dynamic,
	?delay 		: Dynamic
}

class Tooltip {
	public static inline function tooltip( j : js.JQuery , ?opts:TooltipOptions = null ) : js.JQuery {
		return untyped j.tooltip( opts );
	}

	public static inline function tooltipToggle( j : js.JQuery ) { return j.tooltip( "toggle" ); }
	public static inline function tooltipShow( j : js.JQuery )   { return j.tooltip( "show" ); }
	public static inline function tooltipHide( j : js.JQuery )   { return j.tooltip( "hide" ); }

#if !noEmbedBootstrap
	public static function __init__() { bootstrap.Lib.includeFile( "js/bootstrap-tooltip.js" ); }
#end

}