package easeljs.geom;

@:native ("createjs.Point")
extern class Point {
	
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
	* Represents a point on a 2 dimensional x / y coordinate system.
	* @class Point
	* @constructor
	* @param {Number} x X position. Default is 0.
	* @param {Number} y Y position. Default is 0.
	**/
	public function new (x:Float, y:Float):Void;
	
	/**
	* Returns a clone of the Point instance.
	* @method clone
	* @return {Point} a clone of the Point instance.
	**/
	public function clone ():Point;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

}