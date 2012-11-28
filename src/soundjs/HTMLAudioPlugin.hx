package soundjs;

@:native ("createjs.HTMLAudioPlugin ")
extern class HTMLAudioPlugin 
{
	
	/**
	* The maximum number of instances that can be played. This is a browser limitation.
	* @property MAX_INSTANCES
	* @type Number
	* @default 30
	* @static
	*/
	static public var MAX_INSTANCES:Float;
	
	/**
	* The capabilities of the plugin.
	* @property capabilities
	* @type Object
	* @default null
	* @static
	*/
	static public var capabilities:Dynamic;
	
	/**
	* Play sounds using HTML <audio> tags in the browser.
	* @class HTMLAudioPlugin
	* @constructor
	*/
	public function new():Void;
	
	/**
	* Create a sound instance.
	* @method create
	* @param {String} src The source to use.
	* @return {SoundInstance} A sound instance for playback and control.
	*/
	public function create(src:String):SoundInstance;
	
	/**
	* Pre-register a sound instance when preloading/setup.
	* @method register
	* @param {String} src The source of the audio
	* @param {Number} instances The number of concurrently playing instances to allow for the channel at any time.
	* @return {Object} A result object, containing a tag for preloading purposes.
	*/
	public function register(src:String, instances:Float):Dynamic;
	
	/**
	* Determine the capabilities of the plugin.
	* @method generateCapabiities
	* @static
	*/
	static public function generateCapabilities():Void;
	
	/**
	* Determine if the plugin can be used.
	* @method isSupported
	* @return {Boolean} If the plugin can be initialized.
	* @static
	*/
	static public function isSupported():Bool;
	
}
