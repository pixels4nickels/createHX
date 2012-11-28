package easeljs.filters;

@:native ("createjs.ColorMatrixFilter")
extern class ColorMatrixFilter extends Filter {

	public var matrix:Dynamic;
	
	/**
	* Allows you to carry out complex color operations such as modifying saturation, brightness, or inverting.
	* @class ColorMatrixFilter
	* @constructor
	* @augments Filter
	* @param {Array[Number]} matrix A 4x5 matrix describing the color operation to perform. See also the ColorMatrix class.
	**/
	public function new (matrix:Dynamic):Void;
	
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
	* Returns a clone of this ColorMatrixFilter instance.
	* @method clone
	* @return {ColorMatrixFilter} A clone of the current ColorMatrixFilter instance.
	**/
	override public function clone ():Filter;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}