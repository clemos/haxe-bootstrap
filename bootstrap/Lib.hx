package bootstrap;

import haxe.macro.Expr;
import haxe.macro.Context;

class Lib {
	static var path : String = "lib/bootstrap";

	macro public static function setPath( p : String ){
		path = p;
		return Context.parse("{}", Context.currentPos() );
	}

	macro public static function includeFile( filename : String ){
		return Context.parse( "haxe.macro.Compiler.includeFile(\"" + path + "/" + filename +"\")" , Context.currentPos() );
	}

}