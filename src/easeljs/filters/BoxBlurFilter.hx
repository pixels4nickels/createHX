package easeljs.filters;

import easeljs.geom.Rectangle;

@:native ("createjs.BoxBlurFilter")
extern class BoxBlurFilter extends Filter {

	/**
	* Horizontal blur radius
	* @property blurX
	* @type Number
	**/
	public var blurX:Float;
	
	/**
	* Vertical blur radius
	* @property blurY
	* @type Number
	**/
	public var blurY:Float;
	
	/**
	* Number of blur iterations. For example, a value of 1 will produce a rough blur.
	* A value of 2 will produce a smoother blur, but take twice as long to run.
	* @property quality
	* @type Number
	**/
	public var quality:Float;

	/**
	* BoxBlurFilter applies a box blur to DisplayObjects
	* @class BoxBlurFilter
	* @augments Filter
	* @constructor
	* @param {Number} blurX
	* @param {Number} blurY
	* @param {Number} quality
	**/
	public function new (blurX:Float, blurY:Float, quality:Float):Void;
	
	/**
	* Applies the filter to the specified context.
	* @method applyFilter
	* @param {CanvasRenderingContext2D} ctx The 2D context to use as the source.
	* @param {Number} x The x position to use for the source rect.
	* @param {Number} y The y position to use for the source rect.
	* @param {Number} width The width to use for the source rect.
	* @param {Number} height The height to use for the source rect.
	* @param {CanvasRenderingContext2D} targetCtx Optional. The 2D context to draw the result to. Defaults to the context passed to ctx.
	* @param {Number} targetX Optional. The x position to draw the result to. Defaults to the value passed to x.
	* @param {Number} targetY Optional. The y position to draw the result to. Defaults to the value passed to y.
	* @return {Boolean}
	**/
	override public function applyFilter (ctx:Dynamic, x:Dynamic, y:Dynamic, width:Dynamic, height:Dynamic, targetCtx:Dynamic, targetX:Dynamic, targetY:Dynamic):Void;
	
	/**
	* Returns a clone of this object.
	* @return {BoxBlurFilter}
	**/
	override public function clone ():Filter;
	
	/**
	* Returns a rectangle with values indicating the margins required to draw the filter.
	* For example, a filter that will extend the drawing area 4 pixels to the left, and 7 pixels to the right
	* (but no pixels up or down) would return a rectangle with (x=-4, y=0, width=11, height=0).
	* @method getBounds
	* @return {Rectangle} a rectangle object indicating the margins required to draw the filter.
	**/
	override public function getBounds ():Rectangle;
	
	/**
	* Returns a string representation of this object.
	* @return {String}
	**/
	override public function toString ():String;

}