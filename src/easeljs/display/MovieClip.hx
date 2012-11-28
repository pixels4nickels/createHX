package easeljs.display;

import js.CanvasRenderingContext2D;
import tweenjs.Timeline;

@:native ("createjs.MovieClip")
extern class MovieClip extends Container {
	
	/**
	* If true, actions in this MovieClip's tweens will be run when the playhead advances.
	* @property actionsEnabled
	* @type Boolean
	*/
	public var actionsEnabled:Bool;
	
	/**
	* Indicates whether this MovieClip should loop when it reaches the end of its timeline.
	* @property loop
	* @type Boolean
	* @default true
	*/
	public var loop:Bool;
	
	/**
	* Controls how this MovieClip advances its time. Must be one of 0 (INDEPENDENT), 1 (SINGLE_FRAME), or 2 (SYNCHED).
	* See each constant for a description of the behaviour.
	* @property mode
	* @type String
	* @default null
	**/
	public var mode:String;
	
	/**
	* If true, the MovieClip's position will not advance when ticked.
	* @property paused
	* @type Boolean
	*/
	public var paused:Bool;
	
	/**
	* Specifies what the first frame to play in this movieclip, or the only frame to display if mode is SINGLE_FRAME.
	* @property startPosition
	* @type Number
	* @default 0
	*/
	public var startPosition:Float;
	
	/**
	* The TweenJS Timeline that is associated with this MovieClip. This is created automatically when the MovieClip
	* instance is initialized.
	* @property timeline
	* @type Timeline
	*/
	public var timeline:Timeline;
	
	/**
	* Read-only. The MovieClip will only display a single frame (as determined by the startPosition property).
	* @property SINGLE_FRAME
	* @static
	* @type String
	* @default "single"
	**/
	public static var SINGLE_FRAME:String;
	
	/**
	* Read-only. The MovieClip will advance independently of its parent, even if its parent is paused.
	* This is the default mode.
	* @property INDEPENDENT
	* @static
	* @type String
	* @default "independent"
	**/
	public static var INDEPENDENT:String;
	
	/**
	* Read-only. The MovieClip will be advanced only when it's parent advances and will be synched to the position of
	* the parent MovieClip.
	* @property SYNCHED
	* @static
	* @type String
	* @default "synched"
	**/
	public static var SYNCHED :String;
	
	/**
	* The MovieClip class associates a TweenJS Timeline with an EaselJS Container. It allows you to create objects which
	* encapsulate timeline animations, state changes, and synched actions. Due to the complexities inherent in correctly
	* setting up a MovieClip, it is largely intended for tool output and is not included in the main EaselJS library.
	* <br/><br/>
	* Currently MovieClip only works properly if it is tick based (as opposed to time based) though some concessions have
	* been made to support time based timelines in the future.
	* @class MovieClip
	* @extends Container
	* @constructor
	* @param {String} mode Initial value for the mode property. One of MovieClip.INDEPENDENT, MovieClip.SINGLE_FRAME, or MovieClip.SYNCHED.
	* @param {Number} startPosition Initial value for the startPosition property.
	* @param {Boolean} loop Initial value for the loop property.
	* @param {Object} labels A hash of labels to pass to the timeline instance associated with this MovieClip.
	**/
	public function new (mode:String, startPosition:Float, loop:Bool, labels:Dynamic):Void;
	
	
	/**
	* MovieClip instances cannot be cloned.
	* @method clone
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
	* Advances this movie clip to the specified position or label and sets paused to false.
	* @method gotoAndPlay
	* @param {String|Number} positionOrLabel
	**/
	public function gotoAndPlay (positionOrLabel:Dynamic):Void;
	
	/**
	* Advances this movie clip to the specified position or label and sets paused to true.
	* @method gotoAndStop
	* @param {String|Number} positionOrLabel
	**/
	public function gotoAndStop (positionOrLabel:Dynamic):Void;
	
	/**
	* Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* Sets paused to false.
	* @method play
	**/
	public function play ():Void;
	
	/**
	* Sets paused to true.
	* @method stop
	**/
	public function stop ():Void;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}