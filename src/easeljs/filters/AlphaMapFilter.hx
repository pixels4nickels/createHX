package easeljs.filters;

import easeljs.js.Image;

@:native ("createjs.AlphaMapFilter")
extern class AlphaMapFilter extends Filter {

	/**
	* The greyscale image (or canvas) to use as the alpha value for the result. This should be exactly the same
	* dimensions as the target.
	* @property alphaMap
	* @type Image
	**/
	public var alphaMap:Image;
	
	/**
	* Applies a greyscale alpha map image (or canvas) to the target, such that the alpha channel of the result will
	* be copied from the red channel of the map, and the RGB channels will be copied from the target.
	* <br/><br/>
	* Generally, it is recommended that you use AlphaMaskFilter, because it has much better performance.
	* @class AlphaMapFilter
	* @augments Filter
	* @constructor
	* @param {Image} alphaMap The greyscale image (or canvas) to use as the alpha value for the result. This should be exactly the same
	* dimensions as the target.
	**/
	public function new ( alphaMap:Image ):Void;
	
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
	* @return {AlphaMapFilter} A clone of the current AlphaMapFilter instance.
	**/
	override public function clone ():Filter;
	
	/**
	* Returns a string representation of this object.
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}