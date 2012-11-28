package easeljs.geom;

@:native ("createjs.Rectangle")
extern class Rectangle {
	
	/**
	* Height.
	* @property height
	* @type Number
	**/
	public var height:Float;
	
	/**
	* Width.
	* @property width
	* @type Number
	**/
	public var width:Float;
	
	/**
	* X position.
	* @property x
	* @type Number
	**/
	public var x:Float;
	
	/**
	* Y position.
	* @property y
	* @type Number
	**/
	public var y:Float;
	
	/**
	* Represents a rectangle as defined by the points (x, y) and (x+width, y+height).
	* @class Rectangle
	* @constructor
	* @param {Number} x X position. Default is 0.
	* @param {Number} y Y position. Default is 0.
	* @param {Number} width Width. Default is 0.
	* @param {Number} height Height. Default is 0.
	**/
	public function new (x:Float, y:Float, width:Float, height:Float):Void;
	
	/**
	* Returns a clone of the Rectangle instance.
	* @method clone
	* @return {Rectangle} a clone of the Rectangle instance.
	**/
	public function clone ():Rectangle;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

}