package tweenjs;

/**
* The Ease class provides a collection of easing functions for use with TweenJS.
* It does not use the standard 4 param easing signature. Instead it uses a single param
* which indicates the current linear ratio (0 to 1) of the tween.<br/>
* <br/>
* Most methods on Ease can be passed directly as easing functions:<br/>
* Tween.get(target).to({x:100}, 500, Ease.linear);<br/>
* <br/>
* However, methods beginning with "get" will return an easing function based on parameter values:<br/>
* Tween.get(target).to({y:200}, 500, Ease.getPowIn(2.2));<br/>
* <br/>
* Equations derived from work by Robert Penner.
* @class Ease
* @static
**/

@:native ("createjs.Ease")
extern class Ease {

	public static function backIn ():Void;
	
	public static function backInOut ():Void;
	
	public static function backOut ():Void;
	
	public static function bounceIn (t:Dynamic):Void;
	
	public static function bounceInOut (t:Dynamic):Void;
	
	public static function bounceOut (t:Dynamic):Void;
	
	public static function circIn (t:Dynamic):Void;
	
	public static function circInOut (t:Dynamic):Void;
	
	public static function circOut (t:Dynamic):Void;
	
	public static function cubicIn ():Void;
	
	public static function cubicInOut ():Void;
	
	public static function cubicOut ():Void;
	
	public static function elasticIn ():Void;
	
	public static function elasticInOut ():Void;
	
	public static function elasticOut ():Void;
	
	/**
	* Mimics the simple -100 to 100 easing in Flash Pro.
	* @method get
	* @param amount A value from -1 (ease in) to 1 (ease out) indicating the strength and direction of the ease.
	* @static
	**/
	public static function get (amount:Dynamic):Dynamic;
	
	/**
	* Configurable "back in" ease.
	* @method getBackIn
	* @param amount The strength of the ease.
	* @static
	**/
	public static function getBackIn (amount:Dynamic):Void;
	
	/**
	* Configurable "back in out" ease.
	* @method getBackInOut
	* @param amount The strength of the ease.
	* @static
	**/
	public static function getBackInOut (amount:Dynamic):Void;
	
	/**
	* Configurable "back out" ease.
	* @method getBackOut
	* @param amount The strength of the ease.
	* @static
	**/
	public static function getBackOut (amount:Dynamic):Void;
	
	/**
	* Configurable elastic ease.
	* @method getElasticIn
	* @param amplitude
	* @param period
	* @static
	**/
	public static function getElasticIn (amplitude:Dynamic, period:Dynamic):Void;
	
	/**
	* Configurable elastic ease.
	* @method getElasticInOut
	* @param amplitude
	* @param period
	* @static
	**/
	public static function getElasticInOut (amplitude:Dynamic, period:Dynamic):Void;
	
	/**
	* Configurable elastic ease.
	* @method getElasticOut
	* @param amplitude
	* @param period
	* @static
	**/
	public static function getElasticOut (amplitude:Dynamic, period:Dynamic):Void;
	
	   /**
	* Configurable exponential ease.
	* @method getPowIn
	* @param pow The exponent to use (ex. 3 would return a cubic ease).
	* @static
	**/
	public static function getPowIn (pow:Dynamic):Void;
	
	/**
	* Configurable exponential ease.
	* @method getPowInOut
	* @param pow The exponent to use (ex. 3 would return a cubic ease).
	* @static
	**/
	public static function getPowInOut (pow:Dynamic):Void;
	
	/**
	* Configurable exponential ease.
	* @method getPowOut
	* @param pow The exponent to use (ex. 3 would return a cubic ease).
	* @static
	**/
	public static function getPowOut (pow:Dynamic):Void;
	
	/**
	* @method linear
	* @static
	**/
	public static function linear (t:Dynamic):Void;
	
	/**
	* Identical to linear.
	* @method none
	* @static
	**/
	public static function none ():Void;
	
	public static function quadIn ():Void;
	
	public static function quadInOut ():Void;
	
	public static function quadOut ():Void;
	
	public static function quartIn ():Void;
	
	public static function quartInOut ():Void;
	
	public static function quartOut ():Void;
	
	public static function quintIn ():Void;
	
	public static function quintInOut ():Void;
	
	public static function quintOut ():Void;
	
	public static function sineIn (t:Dynamic):Void;
	
	public static function sineInOut (t:Dynamic):Void;
	
	public static function sineOut (t:Dynamic):Void;

}