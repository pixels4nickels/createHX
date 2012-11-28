package soundjs;

import soundjs.SoundInstance;

@:native ("createjs.FlashPlugin")
extern class FlashPlugin
{
	
	/**
	* The path relative to the HTML page that the FlashAudioPlugin.swf resides.
	* If this is not correct, this plugin will not work.
	* @property BASE_PATH
	* @type String
	* @default src/soundjs
	* @static
	*/
	public static var BASE_PATH:String;
	
	/**
	* The capabilities of the plugin.
	* @property capabilities
	* @type Object
	* @default null
	* @static
	*/
	public static var capabilities:String;
	
	/**
	* A developer flag to output all flash events to the console.
	* @property showOutput
	* @type Boolean
	* @default false
	*/
	public static var showOutput:Bool;
	
	/**
	* Play sounds using a Flash instance. This plugin requires swfObject.as
	* as well as the FlashAudioPlugin.swf. Ensure that FlashPlugin.BASE_PATH
	* is set when using this plugin, so that the script can find the swf.
	* @class FlashPlugin
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
	* Note that the FlashPlugin will return a SoundLoader instance for preloading
	* since Flash can not access the browser cache consistently.
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
