package easeljs.display;

import easeljs.events.MouseEvent;
import js.HTMLCanvasElement;

@:native ("createjs.Stage")
extern class Stage extends Container {

	/**
	* Indicates whether the stage should automatically clear the canvas before each render. You can set this to false to manually
	* control clearing (for generative art, or when pointing multiple stages at the same canvas for example).
	* @property autoClear
	* @type Boolean
	* @default true
	**/
	public var autoClear:Bool;
	
	/**
	* The canvas the stage will render to. Multiple stages can share a single canvas, but you must disable autoClear for all but the
	* first stage that will be ticked (or they will clear each other's render).
	* @property canvas
	* @type HTMLCanvasElement
	**/
	public var canvas:HTMLCanvasElement;
	
	/**
	* Indicates whether the mouse is currently within the bounds of the canvas.
	* @property mouseInBounds
	* @type Boolean
	* @default false
	**/
	public var mouseInBounds:Bool;
	
	/**
	* If true, onMouseMove handlers will continue to be called when the mouse leaves the target canvas. See
	* mouseInBounds, and MouseEvent.x/y/rawX/rawY.
	* @property tickOnUpdate
	* @type mouseMoveOutside
	* @default false
	**/
	public var mouseMoveOutside:Bool;
	
	/**
	* READ-ONLY. The current mouse X position on the canvas. If the mouse leaves the canvas, this will indicate the most recent
	* position over the canvas, and mouseInBounds will be set to false.
	* @property mouseX
	* @type Number
	**/
	public var mouseX:Float;
	
	/**
	* READ-ONLY. The current mouse Y position on the canvas. If the mouse leaves the canvas, this will indicate the most recent
	* position over the canvas, and mouseInBounds will be set to false.
	* @property mouseY
	* @type Number
	**/
	public var mouseY:Float;
	
	/**
	* Indicates whether this stage should use the snapToPixel property of display objects when rendering them. See
	* DisplayObject.snapToPixel for more information.
	* @property snapToPixelEnabled
	* @type Boolean
	* @default false
	**/
	public var snapToPixelEnabled:Bool;
	
	/**
	* If false, tick callbacks will be called on all display objects on the stage prior to rendering to the canvas.
	* @property tickOnUpdate
	* @type Boolean
	* @default false
	**/
	public var tickOnUpdate:Bool;
	
	/**
	* The onMouseDown callback is called when the user presses the mouse button over the canvas. The handler is passed a single
	* param containing the corresponding MouseEvent instance.
	* @event onMouseDown
	* @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	**/
	public var onMouseDown:Dynamic;
	
	/**
	* The onMouseMove callback is called when the user moves the mouse over the canvas. The handler is passed a single param
	* containing the corresponding MouseEvent instance.
	* @event onMouseMove
	* @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	**/
	public var onMouseMove:Dynamic;
	
	/**
	* The onMouseUp callback is called when the user releases the mouse button anywhere that the page can detect it. The handler
	* is passed a single param containing the corresponding MouseEvent instance.
	* @event onMouseUp
	* @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	**/
	public var onMouseUp :Dynamic;
	
	/**
	* Calls the update method. Useful for adding stage as a listener to Ticker directly.
	* @property tick
	* @private
	* @type Function
	**/
	public var tick:Dynamic;
	
	/**
	* A stage is the root level Container for a display list. Each time its tick method is called, it will render its display
	* list to its target canvas.
	* @class Stage
	* @extends Container
	* @constructor
	* @param {HTMLCanvasElement} canvas The canvas the stage will render to.
	**/
	//public function new (canvas:CanvasRenderingContext2D):Void;
	public function new (canvas:HTMLCanvasElement):Void;
	
	/**
	* Clears the target canvas. Useful if autoClear is set to false.
	* @method clear
	**/
	public function clear ():Void;

	/**
	* Returns a clone of this Stage.
	* @return {Stage} A clone of the current Container instance.
	**/
	override public function clone (?recursive:Bool):DisplayObject;

	/**
	* Enables or disables (by passing a frequency of 0) mouse over handlers (onMouseOver and onMouseOut) for this stage's display
	* list. These events can be expensive to generate, so they are disabled by default, and the frequency of the events
	* can be controlled independently of mouse move events via the optional frequency parameter.
	* @method enableMouseOver
	* @param {Number} frequency Optional param specifying the maximum number of times per second to broadcast mouse over/out events. Set to 0 to disable mouse
	* over events completely. Maximum is 50. A lower frequency is less responsive, but uses less CPU. Default is 20.
	**/
	public function enableMouseOver (frequency:Float):Void;

	/**
	* Returns a data url that contains a Base64 encoded image of the contents of the stage. The returned data url can be
	* specified as the src value of an image element.
	* @method toDataURL
	* @param {String} backgroundColor The background color to be used for the generated image. The value can be any value HTML color
	* value, including HEX colors, rgb and rgba. The default value is a transparent background.
	* @param {String} mimeType The MIME type of the image format to be create. The default is "image/png". If an unknown MIME type
	* is passed in, or if the browser does not support the specified MIME type, the default value will be used.
	* @return {String} a Base64 encoded image.
	**/
	public function toDataURL (backgroundColor:String, mimeType:String):String;

	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

	/**
	* Each time the update method is called, the stage will tick any descendants exposing a tick method (ex. BitmapAnimation)
	* and render its entire display list to the canvas. Any parameters passed to update will be passed on to any
	* onTick handlers.
	* @method update
	**/
	public function update (?data:Dynamic):Void;
	
}