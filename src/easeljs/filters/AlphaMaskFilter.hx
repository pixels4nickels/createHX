package easeljs.filters;

import easeljs.js.Image;

@:native ("createjs.AlphaMaskFilter")
extern class AlphaMaskFilter extends Filter {

	/**
	* The image (or canvas) to use as the mask.
	* @property mask
	* @type Image
	**/
	public var  mask:Image;

	/**
	* Applies the alpha from the mask image (or canvas) to the target, such that the alpha channel of the result will
	* be derived from the mask, and the RGB channels will be copied from the target. This can be used, for example, to apply
	* an alpha mask to a display object. This can also be used to combine a JPG compressed RGB image with a PNG32 alpha mask, which can
	* result in a much smaller file size than a single PNG32 containing ARGB.
	* IMPORTANT NOTE: This filter currently does not support the targetCtx, or targetX/Y parameters correctly.
	* @class AlphaMaskFilter
	* @augments Filter
	* @constructor
	* @param {Image} mask
	**/
	public function new (  mask:Image ):Void;
	
	/**
	* Applies the filter to the specified context. IMPORTANT NOTE: This filter currently does not support the targetCtx,
	* or targetX/Y parameters correctly.
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
	* @return {AlphaMaskFilter}
	**/
	override public function clone ():Filter;
	
	/**
	* Returns a string representation of this object.
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}