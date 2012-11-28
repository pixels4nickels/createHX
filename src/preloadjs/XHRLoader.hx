package preloadjs;

@:native ("createjs.XHRLoader" )
extern class XHRLoader extends AbstractLoader
{
	
	/**
	* The loader that handles XmlHttpRequests.
	* @class XHRLoader
	* @constructor
	* @param {Object} file The object that defines the file to load.
	* @extends AbstractLoader
	*/
	public function new( file:Dynamic):Void;
	
}