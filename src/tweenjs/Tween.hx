package tweenjs;

@:native ("createjs.Tween")
extern class Tween {

	/**
	* Read-only. Specifies the total duration of this tween in milliseconds (or ticks if useTicks is true).
	* This value is automatically updated as you modify the tween. Changing it directly could result in unexpected
	* behaviour.
	* @property duration
	* @type Number
	* @default 0
	**/
	public var duration:Float;
	
	/**
	* Causes this tween to continue playing when a global pause is active. For example, if TweenJS is using Ticker,
	* then setting this to true (the default) will cause this tween to be paused when Ticker.setPaused(true) is called.
	* See Tween.tick() for more info. Can be set via the props param.
	* @property ignoreGlobalPause
	* @type Boolean
	* @default false
	**/
	public var ignoreGlobalPause:Bool;
	
	/**
	* If true, the tween will loop when it reaches the end. Can be set via the props param.
	* @property loop
	* @type Boolean
	* @default false
	**/
	public var loop:Bool;
	
	/**
	* Called whenever the tween's position changes with a single parameter referencing this tween instance.
	* @property onChange
	* @type Function
	**/
	public var onChange:Dynamic;
	
	/**
	* Allows you to specify data that will be used by installed plugins. Each plugin uses this differently, but in general
	* you specify data by setting it to a property of pluginData with the same name as the plugin class.<br/>
	* Ex. myTween.pluginData.PluginClassName = data;<br/>
	* <br/>
	* Also, most plugins support a property to enable or disable them. This is typically the plugin class name followed by "_enabled".<br/>
	* Ex. myTween.pluginData.PluginClassName_enabled = false;<br/>
	* <br/>
	* Some plugins also store instance data in this object, usually in a property named _PluginClassName.
	* See the documentation for individual plugins for more details.
	* @property pluginData
	* @type Object
	**/
	public var pluginData:Dynamic;
	
	/**
	* Read-only. The current normalized position of the tween. This will always be a value between 0 and duration.
	* Changing this property directly will have no effect.
	* @property position
	* @type Object
	**/
	public var position:Dynamic;
	
	/**
	* Read-only. The target of this tween. This is the object on which the tweened properties will be changed. Changing
	* this property after the tween is created will not have any effect.
	* @property target
	* @type Object
	**/
	public var target:Dynamic;

	/**
	* Constant defining the none actionsMode for use with setPosition.
	* @property NONE
	* @type Number
	* @static
	**/
	public static var NONE : Float;
	
	/**
	* Constant defining the loop actionsMode for use with setPosition.
	* @property LOOP
	* @type Number
	* @static
	**/
	public static var LOOP : Float;
	
	/**
	* Constant defining the reverse actionsMode for use with setPosition.
	* @property REVERSE
	* @type Number
	* @static
	**/
	public static var REVERSE:Dynamic;
	
	/**
	* Constant returned by plugins to tell the tween not to use default assignment.
	* @property IGNORE
	* @type Object
	* @static
	*/
	public static var IGNORE : Dynamic;

	/**
	* Returns a new Tween instance. See Tween.get for param documentation.
	* @class Tween
	* @constructor
	**/
	public function new (target:Dynamic, props:Dynamic, pluginData:Dynamic):Void;
	
	/**
	* Queues an action to call the specified function. For example: myTween.wait(1000).call(myFunction); would call myFunction() after 1s.
	* @method call
	* @param {Function} callback The function to call.
	* @param {Array} params Optional. The parameters to call the function with. If this is omitted, then the function will be
	* called with a single param pointing to this tween.
	* @param {Object} scope Optional. The scope to call the function in. If omitted, it will be called in the target's scope.
	* @return Tween This tween instance (for chaining calls).
	**/
	public function call (_callback:Dynamic, params:Dynamic, scope:Dynamic):Tween;
	
	/**
	* Queues an action to to pause the specified tween.
	* @method pause
	* @param {Tween} tween The tween to play. If null, it pauses this tween.
	* @return {Tween} This tween instance (for chaining calls)
	**/
	public function pause (tween:Dynamic):Tween;
	
	/**
	* Queues an action to to play (unpause) the specified tween. This enables you to sequence multiple tweens. Ex. myTween.to({x:100},500).play(otherTween);
	* @method play
	* @param {Tween} tween The tween to play.
	* @return {Tween} This tween instance (for chaining calls).
	**/
	public function play (tween:Dynamic):Tween;
	
	/**
	* Queues an action to set the specified props on the specified target. If target is null, it will use this tween's target. Ex. myTween.wait(1000).set({visible:false},foo);
	* @method set
	* @param {Object} props The properties to set (ex. {visible:false}).
	* @param {Object} target Optional. The target to set the properties on. If omitted, they will be set on the tween's target.
	* @return {Tween} This tween instance (for chaining calls).
	**/
	public function set (props:Dynamic, target:Dynamic):Tween;
	
	/**
	* Pauses or plays this tween.
	* @method setPaused
	* @param {Boolean} value Indicates whether the tween should be paused (true) or played (false).
	* @return {Tween} This tween instance (for chaining calls)
	**/
	public function setPaused (value:Dynamic):Tween;
	
	/**
	* Advances the tween to a specified position.
	* @method setPosition
	* @param {Number} value The position to seek to in milliseconds (or ticks if useTicks is true).
	* @param {Number} actionsMode Optional parameter specifying how actions are handled (ie. call, set, play, pause): Tween.NONE (0) - run no actions. Tween.LOOP (1) - if new position is less than old, then run all actions between old and duration, then all actions between 0 and new. Defaults to LOOP. Tween.REVERSE (2) - if new position is less than old, run all actions between them in reverse.
	* @return {Boolean} Returns true if the tween is complete (ie. the full tween has run & loop is false).
	**/
	public function setPosition (value:Dynamic, actionsMode:Dynamic):Bool;
	
	/**
	* Queues a tween from the current values to the target properties. Set duration to 0 to jump to these value.
	* Numeric properties will be tweened from their current value in the tween to the target value. Non-numeric
	* properties will be set at the end of the specified duration.
	* @method to
	* @param {Object} props An object specifying property target values for this tween (Ex. {x:300} would tween the x property of the target to 300).
	* @param {Number} duration Optional. The duration of the wait in milliseconds (or in ticks if useTicks is true). Defaults to 0.
	* @param {Function} ease Optional. The easing function to use for this tween. Defaults to a linear ease.
	* @return {Tween} This tween instance (for chaining calls).
	**/
	public function to (props:Dynamic, ?duration:Dynamic, ?ease:Dynamic):Tween;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;
	
	/**
	* Queues a wait (essentially an empty tween).
	* @method wait
	* @param {Number} duration The duration of the wait in milliseconds (or in ticks if useTicks is true).
	* @return {Tween} This tween instance (for chaining calls).
	**/
	public function wait (duration:Dynamic):Tween;

	/**
	* Returns a new tween instance. This is functionally identical to using "new Tween(...)", but looks cleaner
	* with the chained syntax of TweenJS.
	* @method get
	* @static
	* @param {Object} target The target object that will have its properties tweened.
	* @param {Object} props The configuration properties to apply to this tween instance (ex. {loop:true, paused:true}). All properties default to false. Supported props are:<UL>
	* <LI> loop: sets the loop property on this tween.</LI>
	* <LI> useTicks: uses ticks for all durations instead of milliseconds.</LI>
	* <LI> ignoreGlobalPause: sets the ignoreGlobalPause property on this tween.</LI>
	* <LI> override: if true, Tween.removeTweens(target) will be called to remove any other tweens with the same target.
	* <LI> paused: indicates whether to start the tween paused.</LI>
	* <LI> position: indicates the initial position for this tween.</LI>
	* <LI> onChanged: specifies an onChange handler for this tween.</LI>
	* </UL>
	* @return {Tween} A reference to the created tween. Additional chained tweens, method calls, or callbacks can be
	* applied to the returned tween instance.
	**/
	public static function get (target:Dynamic):Tween;
	
	/**
	* Indicates whether there are any active tweens on the target object (if specified) or in general.
	* @method hasActiveTweens
	* @static
	* @param {Object} target Optional. If not specified, the return value will indicate if there are any active tweens on any target.
	* @return {Boolean} A boolean indicating whether there are any active tweens.
	**/
	public static function hasActiveTweens (target:Dynamic):Void;
	
	/**
	* Installs a plugin, which can modify how certain properties are handled when tweened.
	* See the CSSPlugin for an example of how to write TweenJS plugins.
	* @method installPlugin
	* @static
	* @param {Object} plugin
	* @param {Array} properties
	**/
	public static function installPlugin (plugin:Dynamic, properties:Dynamic):Void;
	
	/**
	* Removes all existing tweens for a target. This is called automatically by new tweens if the "override" prop is true.
	* @method removeTweens
	* @static
	* @param {Object} target The target object to remove existing tweens from.
	**/
	public static function removeTweens (target:Dynamic):Void;
	
	/**
	* Advances all tweens. This typically uses the Ticker class (available in the EaselJS library), but you can call it manually if you prefer to use
	* your own "heartbeat" implementation.
	* @method tick
	* @static
	* @param {Number} delta The change in time in milliseconds since the last tick. Required unless all tweens have useTicks set to true.
	* @param {Boolean} paused Indicates whether a global pause is in effect. Tweens with ignoreGlobalPause will ignore this, but all others will pause if this is true.
	**/
	public static function tick (delta:Dynamic, paused:Dynamic):Void;

}