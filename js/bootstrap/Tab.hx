package js.bootstrap;

class Tab
{
	public static inline function tab( j : js.JQuery ) : js.JQuery
		return untyped j.tab();

	public static inline function tabShow( j : js.JQuery ) : js.JQuery
		return untyped j.tab( "show" );

	#if !noEmbedBootstrap
	public static function __init__()
		bootstrap.Lib.includeFile("js/bootstrap-tab.js");
	#end
}