package js.bootstrap;

class Alert {

	public static inline function alert( j : js.JQuery ) : js.JQuery 
		return untyped j.alert()

	public static inline function alertClose( j : js.JQuery ) : js.JQuery 
		return untyped j.alert("close")

	public static function __init__() 
		#if !noEmbedBootstrap
		bootstrap.Lib.includeFile("js/bootstrap-alert.js")
		#end

}