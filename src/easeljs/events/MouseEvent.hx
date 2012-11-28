package easeljs.events;
import easeljs.display.DisplayObject;

@:native ("createjs.MouseEvent")
extern class MouseEvent {

	public var pageX:Float;
	
	public var pageY:Float;
	
	/**
	* The native MouseEvent generated by the browser. The properties and API for this
	* event may differ between browsers. This property will be null if the
	* EaselJS property was not directly generated from a native MouseEvent.
	* @property nativeEvent
	* @type MouseEvent
	* @default null
	**/
	public var nativeEvent:MouseEvent;
	
	/**
	* The unique id for the pointer (touch point or cursor). This will be either -1 for the mouse, or the system
	* supplied id value.
	* @property pointerID
	* @type {Number}
	*/
	public var pointerID:Int;
	
	/**
	* Indicates whether this is the primary pointer in a multitouch environment. This will always be true for the mouse.
	* For touch pointers, the first pointer in the current stack will be considered the primary pointer.
	* @property primaryPointer
	* @type {Boolean}
	*/
	public var primaryPointer:Bool;
	
	/**
	* The raw x position relative to the stage. Normally this will be the same as the stageX value, unless
	* stage.mouseMoveOutside is true and the pointer is outside of the stage bounds.
	* @property rawX
	* @type Number
	*/
	public var rawX:Float;
	
	/**
	* The raw y position relative to the stage. Normally this will be the same as the stageY value, unless
	* stage.mouseMoveOutside is true and the pointer is outside of the stage bounds.
	* @property rawY
	* @type Number
	*/
	public var rawY:Float;
	
	/**
	* The normalized x position on the stage. This will always be within the range 0 to stage width.
	* @property stageX
	* @type Number
	*/
	public var stageX:Float;
	
	/**
	* The normalized y position on the stage. This will always be within the range 0 to stage height.
	* @property stageY
	* @type Number
	**/
	public var stageY:Float;
	
	/**
	* The display object this event relates to.
	* @property target
	* @type DisplayObject
	* @default null
	*/
	public var target:DisplayObject;
	
	/**
	* The type of mouse event. This will be the same as the handler it maps to (onPress,
	* onMouseDown, onMouseUp, onMouseMove, or onClick).
	* @property type
	* @type String
	**/
	public var type:String;
	
	/**
	* This is passed as the parameter to onPress, onMouseMove, onMouseUp, onMouseDown, onMouseOver, onMouseOut and onClick
	* handlers on DisplayObject instances.
	* @class MouseEvent
	* @constructor
	* @param {String} type The event type.
	* @param {Number} stageX The normalized x position relative to the stage.
	* @param {Number} stageY The normalized y position relative to the stage.
	* @param {DisplayObject} target The display object this event relates to.
	* @param {MouseEvent} nativeEvent The native DOM event related to this mouse event.
	* @param {Number} pointerID The unique id for the pointer.
	* @param {Boolean} primary Indicates whether this is the primary pointer in a multitouch environment.
	* @param {Number} rawX The raw x position relative to the stage.
	* @param {Number} rawY The raw y position relative to the stage.
	**/
	public function new (type:String, stageX:Float, stageY:Float, target:DisplayObject, nativeEvent:MouseEvent):Void;
	
	/**
	* Returns a clone of the MouseEvent instance.
	* @method clone
	* @return {MouseEvent} a clone of the MouseEvent instance.
	**/
	public function clone ():MouseEvent;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

	
	/**
	* For events of type "onPress" only you can assign a handler to the onMouseMove
	* property. This handler will be called every time the mouse is moved until the mouse is released.
	* This is useful for operations such as drag and drop.
	* @event onMouseMove
	* @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	**/
	public static inline var onMouseMove:String = "onMouseMove";
	
	/**
	* For events of type "onPress" only you can assign a handler to the onMouseUp
	* property. This handler will be called every time the mouse is moved until the mouse is released.
	* This is useful for operations such as drag and drop.
	* @event onMouseUp
	* @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	*/
	public static inline var onMouseUp:String = "onMouseUp";
	
	public static inline var onDoubleClick:String = "onDoubleClick";
	
	public static inline var onPress:String = "onPress";
	
	public static inline var onMouseOver:String = "onMouseOver";
	
	public static inline var onMouseOut:String = "onMouseOut";
	
	public static inline var onMouseDown:String = "onMouseDown";

}