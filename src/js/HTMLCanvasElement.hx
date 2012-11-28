package js;

@:native ("HTMLCanvasElement")
extern class HTMLCanvasElement
{
    public function new():Void;
    public function getContext(name:String):Dynamic;
    public function toDataURL(value:String):Dynamic;
    public var width:Int;
    public var height:Int;
    public var offsetLeft:Int;
    public var offsetTop:Int;
	
	public var onmousemove:Dynamic;
	public var onmousedown:Dynamic;
	public var onmouseup:Dynamic;
}