package js;

@:native ("RegExp")
extern class RegExp {

	public var global:Bool;
	public var ignoreCase:Bool;
	public var lastIndex:Float;
	public var multiline:Bool;
	public var source:String;

	public function new (pattern:String, flags:String):Void;
	
	public function exec (str:String):Array <Dynamic>;
	public function test (str:String):Bool;
	public function toString ():String;

}