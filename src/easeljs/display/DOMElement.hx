package easeljs.display;

import easeljs.geom.Point;
import js.CanvasRenderingContext2D;
import js.Dom;

@:native ("createjs.DOMElement")
extern class DOMElement extends DisplayObject {

	/**
	* The DOM object to manage.
	* @property htmlElement
	* @type HTMLElement
	**/
	public var htmlElement:Dynamic;

	/**
	* <b>This class is still experimental, and more advanced use is likely to be buggy. Please report bugs.</b><br/><br/>
	* A DOMElement allows you to associate a HTMLElement with the display list. It will be transformed
	* within the DOM as though it is child of the Container it is added to. However, it is not rendered
	* to canvas, and as such will retain whatever z-index it has relative to the canvas (ie. it will be
	* drawn in front of or behind the canvas).<br/><br/>
	* The position of a DOMElement is relative to their parent node in the DOM. It is recommended that
	* the DOM Object be added to a div that also contains the canvas so that they share the same position
	* on the page.<br/><br/>
	* DOMElement is useful for positioning HTML elements over top of canvas content, and for elements
	* that you want to display outside the bounds of the canvas. For example, a tooltip with rich HTML
	* content.<br/><br/>
	* DOMElement instances are not full EaselJS display objects, and do not participate in EaselJS mouse
	* events or support methods like hitTest.
	* @class DOMElement
	* @extends DisplayObject
	* @constructor
	* @param {HTMLElement} htmlElement A reference or id for the DOM element to manage.
	**/
	public function new (htmlElement:Dynamic):Void;
	
	/**
	* Not applicable to DOMElement.
	* @method cache
	*/
	override public function cache (?x:Float, ?y:Float, ?width:Float, ?height:Float):Void;
	
	/**
	* This presently clones the DOMElement instance, but not the associated HTMLElement.
	* @method clone
	* @return {DOMElement} a clone of the DOMElement instance.
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
	* Not applicable to DOMElement.
	* @method globalToLocal
	*/
	override public function globalToLocal (?x:Float, ?y:Float):Point;
	
	/**
	* Returns true or false indicating whether the display object would be visible if drawn to a canvas.
	* This does not account for whether it would be visible within the boundaries of the stage.
	* NOTE: This method is mainly for internal use, though it may be useful for advanced uses.
	* @method isVisible
	* @return {Boolean} Boolean indicating whether the display object would be visible if drawn to a canvas
	**/
	override public function isVisible ():Bool;
	
	/**
	* Not applicable to DOMElement.
	* @method localToGlobal
	*/
	override public function localToGlobal (?x:Float, ?y:Float):Point;
	
	/**
	* Not applicable to DOMElement.
	* @method localToLocal
	*/
	override public function localToLocal (?x:Float, ?y:Float, ?target:DisplayObject):Point;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;
	
	/**
	* Not applicable to DOMElement.
	* @method uncache
	*/
	override public function uncache ():Void;
	
	/**
	* Not applicable to DOMElement.
	* @method updateCache
	*/
	override public function updateCache (?compositeOperation:String):Void;

}