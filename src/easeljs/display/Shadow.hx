package easeljs.display;

@:native ("createjs.Shadow")
extern class Shadow {

	/** The blur of the shadow.
	* property blur
	* @type Number
	* @default 0
	*/
	public var blur:Float;
	
	/** The color of the shadow.
	* property color
	* @type String
	* @default null
	*/
	public var color:String;
	
	/** The x offset of the shadow.
	* property offsetX
	* @type Number
	* @default 0
	*/
	public var offsetX:Float;
	
	/** The y offset of the shadow.
	* property offsetY
	* @type Number
	* @default 0
	*/
	public var offsetY:Float;
	
	/**
	* An identity shadow object (all properties are set to 0). Read-only.
	* @property identity
	* @type Shadow
	* @static
	* @final
	**/
	public static var identity:Shadow;
	
	/**
	* Encapsulates the properties required to define a shadow to apply to a DisplayObject via it's .shadow property.
	* @class Shadow
	* @constructor
	* @param {String} color The color of the shadow.
	* @param {Number} offsetX The x offset of the shadow.
	* @param {Number} offsetY The y offset of the shadow.
	* @param {Number} blur The size of the blurring effect.
	**/
	public function new (color:String, offsetX:Float, offsetY:Float, blur:Float):Void;
	
	
	/**
	* Returns a clone of this Shadow instance.
	* @method clone
	* @return {Shadow} A clone of the current Shadow instance.
	**/
	public function clone ():Shadow;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

}