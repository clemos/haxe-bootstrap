package js.bootstrap;

class Button {

	public static inline function button( j : js.JQuery , ?state:String = null ) : js.JQuery 
		return untyped j.button( state )

	public static inline function buttonToggle( j : js.JQuery ) : js.JQuery 
		return untyped j.button( "toggle" )

	public static inline function buttonLoading( j : js.JQuery ) : js.JQuery 
		return untyped j.button( "loading" )

	public static inline function buttonReset( j : js.JQuery ) : js.JQuery 
		return untyped j.button( "reset" )

	#if !noEmbedBootstrap
	public static function __init__() 
		bootstrap.Lib.includeFile("js/bootstrap-button.js")
	#end
	
}