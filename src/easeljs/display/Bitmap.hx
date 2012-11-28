package easeljs.display;

import easeljs.geom.Rectangle;
import js.CanvasRenderingContext2D;

@:native ("createjs.Bitmap")
extern class Bitmap extends DisplayObject {

	/**
	* The image to render. This can be an Image, a Canvas, or a Video.
	* @property image
	* @type Image | HTMLCanvasElement | HTMLVideoElement
	**/
	public var image:Dynamic;
	
	/**
	* Specifies an area of the source image to draw. If omitted, the whole image will be drawn.
	* @property sourceRect
	* @type Rectangle
	* @default null
	*/
	public var sourceRect:Rectangle;

	/**
	* A Bitmap represents an Image, Canvas, or Video in the display list.
	* @class Bitmap
	* @extends DisplayObject
	* @constructor
	* @param {Image | HTMLCanvasElement | HTMLVideoElement | String} imageOrUri The source object or URI to an image to display. This can be either an Image, Canvas, or Video object, or a string URI to an image file to load and use. If it is a URI, a new Image object will be constructed and assigned to the .image property.
	**/
	public function new (imageOrUri:Dynamic):Void;
	
	/**
	* Because the content of a Bitmap is already in a simple format, cache is unnecessary for Bitmap instances.
	* You should not cache Bitmap instances as it can degrade performance.
	* @method cache
	**/
	override public function cache (?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	
	/**
	* Returns a clone of the Bitmap instance.
	* @method clone
	* @return {Bitmap} a clone of the Bitmap instance.
	**/
	override public function clone (?recursive:Bool):DisplayObject;
	
	/**
	* Draws the display object into the specified context ignoring it's visible, alpha, shadow, and transform.
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
	* Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;
	
	override public function uncache ():Void;
	
	/**
	* Because the content of a Bitmap is already in a simple format, cache is unnecessary for Bitmap instances.
	* You should not cache Bitmap instances as it can degrade performance.
	* @method updateCache
	**/
	override public function updateCache (?compositeOperation:String):Void;

}