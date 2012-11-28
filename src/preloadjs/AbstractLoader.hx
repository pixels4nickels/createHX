package preloadjs;

@:native ("createjs.AbstractLoader ")
extern class AbstractLoader
{
	
	/**
	* Determine if a preload instance was canceled. Canceled loads will
	* not fire complete events. Note that PreloadJS queues should be closed
	* instead of canceled.
	* @property canceled
	* @type {Boolean}
	* @default false
	*/
	public var canceled:Bool;
	
	/**
	* Determine if this loader has completed already.
	* @property loaded
	* @type Boolean
	* @default false
	*/
	public var loaded:Bool;
	
	/**
	* The current load progress (percentage) for this item.
	* @property progress
	* @type Number
	* @default 0
	*/
	public var progress:Float;
	
	/**
	* The callback to fire when all loading is complete.
	* @event onComplete
	*/
	public var onComplete:Dynamic;
	
	/**
	* The callback to fire when the loader encounters an error. If the error was encountered
	* by a file, the event will contain the required file data, but the target will be the loader.
	* @event onError
	*/
	public var onError:Dynamic;
	
	/**
	* The callback to fire when a file completes.
	* @event onFileLoad
	*/
	public var onFileLoad:Dynamic;
	
	/**
	* The callback to fire when a file progress changes.
	* @event onFileProgress
	*/
	public var onFileProgress:Dynamic;
	
	/**
	* The callback to fire when a load starts.
	* @event onLoadStart
	*/
	public var onLoadStart:Dynamic;
	
	/**
	* The callback to fire when progress changes.
	* @event onProgress
	*/
	public var onProgress:Dynamic;

	/**
	* The base loader, which handles all callbacks. All loaders should extend this class.
	* @class AbstractLoader
	* @constructor
	*/
	public function new():Void;

	/**
	* Cancel the load.
	*/
	public function cancel():Void;
	
	/**
	* Get a reference to the manifest item that is loaded by this loader.
	* @return {Object} The manifest item
	*/
	public function getItem():Dynamic;
	
	/**
	* Begin the load.
	*/
	public function load():Void;

}
