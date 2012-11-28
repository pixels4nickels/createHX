package easeljs.filters;

@:native ("createjs.ColorFilter")
extern class ColorFilter extends Filter {

	/**
	* Alpha channel multiplier.
	* @property redMultiplier
	* @type Number
	**/
	public var alphaMultiplier:Float;
	
	/**
	* Alpha channel offset (added to value).
	* @property alphaOffset
	* @type Number
	**/
	public var alphaOffset:Float;
	
	/**
	* Blue channel multiplier.
	* @property blueMultiplier
	* @type Number
	**/
	public var blueMultiplier:Float;
	
	/**
	* Blue channel offset (added to value).
	* @property blueOffset
	* @type Number
	**/
	public var blueOffset:Float;
	
	/**
	* Green channel multiplier.
	* @property greenMultiplier
	* @type Number
	**/
	public var greenMultiplier:Float;
	
	/**
	* Green channel offset (added to value).
	* @property greenOffset
	* @type Number
	**/
	public var greenOffset:Float;
	
	/**
	* Red channel multiplier.
	* @property redMultiplier
	* @type Number
	**/
	public var redMultiplier:Float;
	
	/**
	* Red channel offset (added to value).
	* @property redOffset
	* @type Number
	**/
	public var redOffset:Float;

	/**
	* Applies color transforms.
	* @class ColorFilter
	* @constructor
	* @augments Filter
	* @param {Number} redMultiplier
	* @param {Number} greenMultiplier
	* @param {Number} blueMultiplier
	* @param {Number} alphaMultiplier
	* @param {Number} redOffset
	* @param {Number} greenOffset
	* @param {Number} blueOffset
	* @param {Number} alphaOffset
	**/
	public function new (redMultiplier:Float, greenMultiplier:Float, blueMultiplier:Float, ?alphaMultiplier:Float, ?redOffset:Float, ?greenOffset:Float, ?blueOffset:Float, ?alphaOffset:Float):Void;
	
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
	* Returns a clone of this ColorFilter instance.
	* @method clone
	* @return {ColorFilter} A clone of the current ColorFilter instance.
	**/
	override public function clone ():Filter;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	override public function toString ():String;

}