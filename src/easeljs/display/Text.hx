package easeljs.display;

import easeljs.geom.Point;
import js.CanvasRenderingContext2D;

@:native ("createjs.Text")
extern class Text extends DisplayObject {
	
	/**
	* The color to draw the text in. Any valid value for the CSS color attribute is acceptable (ex. "#F00"). Default is "#000".
	* @property color
	* @type String
	**/
	public var color:String;
	
	/**
	* The font style to use. Any valid value for the CSS font attribute is acceptable (ex. "bold 36px Arial").
	* @property font
	* @type String
	**/
	public var font:String;

	/** Indicates the line height (vertical distance between baselines) for multi-line text. If null or 0,
	* the value of getMeasuredLineHeight is used.
	* @property lineHeight
	* @type Number
	**/
	public var lineHeight:Float;

	/**
	* Indicates the maximum width for a line of text before it is wrapped to multiple lines. If null,
	* the text will not be wrapped.
	* @property lineWidth
	* @type Number
	**/
	public var lineWidth:Float;

	/** The maximum width to draw the text. If maxWidth is specified (not null), the text will be condensed or
	* shrunk to make it fit in this width. For detailed information view the
	* <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-styles">
	* whatwg spec</a>.
	* @property maxWidth
	* @type Number
	*/
	public var maxWidth:Float;
	
	/** If true, the text will be drawn as a stroke (outline). If false, the text will be drawn as a fill.
	* @property outline
	* @type Boolean
	**/
	public var outline:Bool;
	
	/**
	* The text to display.
	* @property text
	* @type String
	**/
	public var text:String;

	/**
	* The horizontal text alignment. Any of "start", "end", "left", "right", and "center". For detailed
	* information view the
	* <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-styles">
	* whatwg spec</a>. Default is "left".
	* @property textAlign
	* @type String
	**/
	public var textAlign:String;
	
	/** The vertical alignment point on the font. Any of "top", "hanging", "middle", "alphabetic",
	* "ideographic", or "bottom". For detailed information view the
	* <a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/the-canvas-element.html#text-styles">
	* whatwg spec</a>. Default is "top".
	* @property textBaseline
	* @type String
	*/
	public var textBaseline:String;

	/**
	* Allows you to display one or more lines of dynamic text (not user editable) in the display list.
	* Line wrapping support (using the lineWidth is very basic, wrapping on spaces and tabs only. Note
	* that as an alternative to Text, you can position HTML text above or below the canvas relative to
	* items in the display list using the localToGlobal() method.
	* @class Text
	* @extends DisplayObject
	* @constructor
	* @param {String} text Optional. The text to display.
	* @param {String} font Optional. The font style to use. Any valid value for the CSS font attribute is
	* acceptable (ex. "bold 36px Arial").
	* @param {String} color Optional. The color to draw the text in. Any valid value for the CSS color attribute
	* is acceptable (ex. "#F00").
	**/
	public function new (text:String, font:String, ?color:String):Void;
	
	/**
	* Returns a clone of the Point instance.
	* @method clone
	* @return {Point} a clone of the Point instance.
	**/
	override public function clone (?recursive:Bool):DisplayObject;
	
	/**
	* Draws the Text into the specified context ignoring it's visible, alpha, shadow, and transform.
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
	
	/**
	* Returns an approximate line height of the text, ignoring the lineHeight property. This is based
	* on the measured width of a "M" character multiplied by 1.2, which approximates em for most fonts.
	* @method getMeasuredLineHeight
	* @return {Number} an approximate line height of the text, ignoring the lineHeight property. This is
	* based on the measured width of a "M" character multiplied by 1.2, which approximates em for most fonts.
	**/
	public function getMeasuredLineHeight ():Float;
	
	/**
	* Returns the approximate height of multiline text by multiplying the number of lines against
	* either the lineHeight (if specified) or getMeasuredLineHeight(). Note that this operation
	* requires the text flowing logic to run, which has an associated CPU cost.
	* @method getMeasuredHeight
	* @return {Number} The approximate height of the drawn multiline text.
	**/
	public function getMeasuredHeight ():Float;
	
	/**
	* Returns the measured, untransformed width of the text without wrapping.
	* @method getMeasuredWidth
	* @return {Number} The measured, untransformed width of the text.
	**/
	public function getMeasuredWidth ():Float;

}