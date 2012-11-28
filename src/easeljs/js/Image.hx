package easeljs.js;

@:native ("Image")
extern class Image {
	
	public var crossOrigin  : String;
	public var naturalHeight : Float;
	public var naturalWidth : Float;
	
	public var align : String;
	public var alt : String;
	public var border : String;
	public var height : Float;
	public var hspace : Int;
	public var isMap : Bool;
	public var name : String;
	public var src : String;
	public var useMap : String;
	public var vspace : Int;
	public var width : Float;

	public var complete : Bool;
	public var lowsrc : String;

	public var onabort : Dynamic;
	public var onerror : Dynamic;
	public var onload : Dynamic;
	
	public function new () : Void;
	
}