package bootstrap;

import haxe.macro.Expr;
import haxe.macro.Context;

@:macro class Lib {
	static var path : String = "lib/bootstrap";

	public static function setPath( p : String ){
		path = p;
		return Context.parse("{}", Context.currentPos() );
	}

	public static function includeFile( filename : String ){
		return Context.parse( "haxe.macro.Tools.includeFile(\"" + path + "/" + filename +"\")" , Context.currentPos() );
	}

}