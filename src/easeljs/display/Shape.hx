package easeljs.display;
import js.CanvasRenderingContext2D;

@:native ("createjs.Shape")
extern class Shape extends DisplayObject {
	
	/**
	* The graphics instance to display.
	* @property graphics
	* @type Graphics
	**/
	public var graphics:Graphics;
	
	/**
	* A Shape allows you to display vector art in the display list. It composites a Graphics instance which exposes all of the vector
	* drawing methods. The Graphics instance can be shared between multiple Shape instances to display the same vector graphics with different
	* positions or transforms. If the vector art will not change between draws, you may want to use the cache() method to reduce the rendering cost.
	* @class Shape
	* @extends DisplayObject
	* @param {Graphics} graphics Optional. The graphics instance to display. If null, a new Graphics instance will be created.
	**/
	override public function new (?graphics:Graphics):Void;
	
	
	/**
	* Returns a clone of this Shape. Some properties that are specific to this instance's current context are reverted to
	* their defaults (for example .parent).
	* @method clone
	* @param {Boolean} recursive If true, this Shape's Graphics instance will also be cloned. If false, the Graphics instance
	* will be shared with the new Shape.
	**/
	override public function clone (?recursive:Bool):DisplayObject;
	
	/**
	* Draws the Shape into the specified context ignoring it's visible, alpha, shadow, and transform.
	* Returns true if the draw was handled (useful for overriding functionality).
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method draw
	* @param {CanvasRenderingContext2D} ctx The canvas 2D context object to draw into.
	* @param {Boolean} ignoreCache Indicates whether the draw operation should ignore any current cache.
	* For example, used for drawing the cache (to prevent it from simply drawing an existing cache back
	* into itself).
	**/
	override public function draw (ctx:CanvasRenderingContext2D, ?ignoreCache:Bool):Void;
	
	/**
	* Returns true or false indicating whether the Shape would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the Shape would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}