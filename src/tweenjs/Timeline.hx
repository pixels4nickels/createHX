package tweenjs;

@:native ("createjs.Timeline")
extern class Timeline {

	/**
	* Read-only property specifying the total duration of this timeline in milliseconds (or ticks if useTicks is true).
	* This value is usually automatically updated as you modify the timeline. See updateDuration for more information.
	* @property duration
	* @type Number
	**/
	public var duration:Float;
	
	/**
	* Causes this timeline to continue playing when a global pause is active.
	* @property ignoreGlobalPause
	* @type Boolean
	**/
	public var ignoreGlobalPause:Bool;
	
	/**
	* If true, the timeline will loop when it reaches the end. Can be set via the props param.
	* @property loop
	* @type Boolean
	**/
	public var loop:Bool;
	
	/**
	* Called, with a single parameter referencing this timeline instance, whenever the timeline's position changes.
	* @property onChange
	* @type Function
	**/
	public var onChange:Dynamic;
	
	/**
	* Read-only. The current normalized position of the timeline. This will always be a value between 0 and duration.
	* Changing this property directly will have no effect.
	* @property position
	* @type Object
	**/
	public var position:Dynamic;
	
	/**
	* The Timeline class synchronizes multiple tweens and allows them to be controlled as a group.
	* @class Timeline
	* @param tweens An array of Tweens to add to this timeline. See addTween for more info.
	* @param labels An object defining labels for using gotoAndPlay/Stop. See setLabels for details.
	* @param props The configuration properties to apply to this tween instance (ex. {loop:true}). All properties default to false. Supported props are:<UL>
	* <LI> loop: sets the loop property on this tween.</LI>
	* <LI> useTicks: uses ticks for all durations instead of milliseconds.</LI>
	* <LI> ignoreGlobalPause: sets the ignoreGlobalPause property on this tween.</LI>
	* <LI> paused: indicates whether to start the tween paused.</LI>
	* <LI> position: indicates the initial position for this timeline.</LI>
	* <LI> onChanged: specifies an onChange handler for this timeline.</LI>
	* </UL>
	* @constructor
	**/
	public function new (tweens:Dynamic, labels:Dynamic, props:Dynamic):Void;
	
	/**
	* Adds a label that can be used with gotoAndPlay/Stop.
	* @method addLabel
	* @param label The label name.
	* @param position The position this label represents.
	**/
	public function addLabel (o:Dynamic):Void;
	
	/**
	* Defines labels for use with gotoAndPlay/Stop. Overwrites any previously set labels.
	* @method addLabel
	* @param o An object defining labels for using gotoAndPlay/Stop in the form {labelName:time} where time is in ms (or ticks if useTicks is true).
	**/
	public function setLabels (o:Dynamic):Void;
	
	/**
	* Adds one or more tweens (or timelines) to this timeline. The tweens will be paused (to remove them from the normal ticking system)
	* and managed by this timeline. Adding a tween to multiple timelines will result in unexpected behaviour.
	* @method addTween
	* @param tween The tween(s) to add. Accepts multiple arguments.
	* @return Tween The first tween that was passed in.
	**/
	public function addTween (tween:Dynamic):Tween;
	
	/**
	* Removes one or more tweens from this timeline.
	* @method removeTween
	* @param tween The tween(s) to remove. Accepts multiple arguments.
	* @return Boolean Returns true if all of the tweens were successfully removed.
	**/
	public function removeTween (tween:Dynamic):Bool;
	
	/**
	* Unpauses this timeline and jumps to the specified position or label.
	* @method gotoAndPlay
	* @param positionOrLabel The position in milliseconds (or ticks if useTicks is true) or label to jump to.
	**/
	public function gotoAndPlay (positionOrLabel:Dynamic):Void;
	
	/**
	* Pauses this timeline and jumps to the specified position or label.
	* @method gotoAndStop
	* @param positionOrLabel The position in milliseconds (or ticks if useTicks is true) or label to jump to.
	**/
	public function gotoAndStop (positionOrLabel:Dynamic):Void;
	
	/**
	* If a numeric position is passed, it is returned unchanged. If a string is passed, the position of the
	* corresponding frame label will be returned, or null if a matching label is not defined.
	* @method resolve
	* @param positionOrLabel A numeric position value or label string.
	**/
	public function resolve (positionOrLabel:Dynamic):Void;
	
	/**
	* Pauses or plays this timeline.
	* @method setPaused
	* @param value Indicates whether the tween should be paused (true) or played (false).
	**/
	public function setPaused (value:Dynamic):Void;
	
	/**
	* Advances the timeline to the specified position.
	* @method setPosition
	* @param value The position to seek to in milliseconds (or ticks if useTicks is true).
	* @param actionsMode Optional parameter specifying how actions are handled. See Tween.setPosition for more details.
	* @return Boolean Returns true if the timeline is complete (ie. the full timeline has run & loop is false).
	**/
	public function setPosition (value:Dynamic, actionsMode:Dynamic):Bool;
	
	/**
	* Advances this timeline by the specified amount of time in milliseconds (or ticks if useTicks is true).
	* This is normally called automatically by the Tween engine (via Tween.tick), but is exposed for advanced uses.
	* @method tick
	* @param delta The time to advance in milliseconds (or ticks if useTicks is true).
	**/
	public function tick (delta:Dynamic):Void;
	
	/**
	* Recalculates the duration of the timeline.
	* The duration is automatically updated when tweens are added or removed, but this method is useful
	* if you modify a tween after it was added to the timeline.
	* @method updateDuration
	**/
	public function updateDuration ():Void;
	
	/**
	* Returns a string representation of this object.
	* @method toString
	* @return {String} a string representation of the instance.
	**/
	public function toString ():String;

}