package easeljs.display;

import easeljs.geom.Point;
import js.CanvasRenderingContext2D;

@:native ("createjs.BitmapAnimation")
extern class BitmapAnimation extends DisplayObject {

	/**
	* Returns the currently playing animation. READ-ONLY.
	* @property currentAnimation
	* @type String
	* @final
	**/
	public var currentAnimation:String;
	
	/**
	* Specifies the current frame index within the current playing animation. When playing normally, this will
	* increase successively from 0 to n-1, where n is the number of frames in the current animation.
	* @property currentAnimationFrame
	* @type Number
	* @default 0
	**/
	public var currentAnimationFrame:Int;
	
	/**
	* The frame that will be drawn when draw is called. Note that with some SpriteSheet data, this
	* will advance non-sequentially. READ-ONLY.
	* @property currentFrame
	* @type Number
	* @default -1
	**/
	public var currentFrame:Int;
	
	/**
	* When used in conjunction with animations having an frequency greater than 1, this lets you offset which tick the playhead will
	* advance on. For example, you could create two BitmapAnimations, both playing an animation with a frequency of 2, but one
	* having offset set to 1. Both instances would advance every second tick, but they would advance on alternating
	* ticks (effectively, one instance would advance on odd ticks, the other on even ticks).
	* @property offset
	* @type Number
	* @default 0
	*/
	public var offset:Float;
	
	/**
	* Specifies a function to call whenever any animation reaches its end. It will be called with two
	* params: the first will be a reference to this instance, the second will be the name of the animation
	* that just ended.
	* @property onAnimationEnd
	* @type Function
	**/
	public var onAnimationEnd:Dynamic;
	
	/**
	* Prevents the animation from advancing each tick automatically. For example, you could create a sprite
	* sheet of icons, set paused to true, and display the appropriate icon by setting currentFrame.
	* @property paused
	* @type Boolean
	* @default false
	**/
	public var paused:Bool;
	
	/**
	* The SpriteSheet instance to play back. This includes the source image, frame dimensions, and frame
	* data. See SpriteSheet for more information.
	* @property spriteSheet
	* @type SpriteSheet
	**/
	public var spriteSheet:SpriteSheet;
	
	/**
	* Displays frames or sequences of frames (ie. animations) from a sprite sheet image. A sprite sheet is a series of images
	* (usually animation frames) combined into a single image. For example, an animation
	* consisting of 8 100x100 images could be combined into a 400x200 sprite sheet (4 frames across by 2 high).
	* You can display individual frames, play frames as an animation, and even sequence animations
	* together. See the SpriteSheet class for more information on setting up frames and animations.
	* @class BitmapAnimation
	* @extends DisplayObject
	* @constructor
	* @param {SpriteSheet} spriteSheet The SpriteSheet instance to play back. This includes the source image(s), frame
	* dimensions, and frame data. See SpriteSheet for more information.
	**/
	public function new (spriteSheet:Dynamic):Void;
	
	/**
	* Advances the playhead. This occurs automatically each tick by default.
	* @method advance
	*/
	public function advance ():Void;
	
	/**
	* Because the content of a Bitmap is already in a simple format, cache is unnecessary for Bitmap instances.
	* You should not cache Bitmap instances as it can degrade performance.
	* @method cache
	**/
	override public function cache (?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	
	/**
	* Returns a clone of the Point instance.
	* @method clone
	* @return {Point} a clone of the Point instance.
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
	* Sets paused to false and plays the specified animation name, named frame, or frame number.
	* @method gotoAndPlay
	* @param {String|Number} frameOrAnimation The frame number or animation name that the playhead should move to
	* and begin playing.
	**/
	public function gotoAndPlay (frameOrAnimation:Dynamic):Void;
	
	/**
	* Sets paused to true and seeks to the specified animation name, named frame, or frame number.
	* @method gotoAndStop
	* @param {String|Number} frameOrAnimation The frame number or animation name that the playhead should move to
	* and stop.
	**/
	public function gotoAndStop (frameOrAnimation:Dynamic):Void;
	
	/**
	* Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* TODO: Doc.
	* @method play
	**/
	public function play ():Void;
	
	/**
	* TODO: Doc.
	* @method stop
	**/
	public function stop ():Void;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;
	override public function uncache ():Void;
	override public function updateCache (?compositeOperation:String):Void;

}