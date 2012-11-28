package tweenjs;

/**
* A TweenJS plugin for working with numeric CSS string properties (ex. top, left). To use simply call
* CSSPlugin.install() after TweenJS has loaded. You can adjust the CSS properties it will work with by
* modifying the cssSuffixMap property.
* @class CSSPlugin
* @constructor
**/

@:native ("createjs.CSSPlugin")
extern class CSSPlugin {

	/**
	* Defines the default suffix map for CSS tweens. This can be overridden on a per tween basis by specifying a
	* cssSuffixMap value for the individual tween. The object maps CSS property names to the suffix to use when
	* reading or setting those properties. For example a map in the form {top:"px"} specifies that when tweening
	* the "top" CSS property, it should use the "px" suffix (ex. target.style.top = "20.5px"). This only applies
	* to tweens with the "css" config property set to true.
	* @property cssSuffixMap
	* @type Object
	* @static
	**/
	static public var cssSuffixMap:Dynamic;
	
	/**
	* Used by TweenJS to determine when to call this plugin.
	* @property priority
	* @protected
	* @static
	**/
	static public var priority:Float;
		
	/**
	* Called by TweenJS when a new tween property initializes that this plugin is registered for.
	* @method init
	* @protected
	* @static
	**/
	static public function init (tween:Dynamic, prop:Dynamic, value:Dynamic):Void;
	
	/**
	* Installs this plugin for use with TweenJS. Call this once, after TweenJS is loaded to enable this plugin.
	* @method install
	* @static
	**/
	static public function install ():Void;
	
	/**
	* Called by TweenJS when a tween property advances that this plugin is registered for.
	* @method tween
	* @protected
	* @static
	**/
	static public function tween (tween:Dynamic, prop:Dynamic, value:Dynamic, startValues:Dynamic, endValues:Dynamic, ratio:Dynamic, position:Dynamic, end:Dynamic):Void;

}